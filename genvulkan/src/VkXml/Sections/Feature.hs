{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE LambdaCase            #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RecordWildCards       #-}
{-# LANGUAGE Strict                #-}

module VkXml.Sections.Feature
  ( parseFeature, parseVkRequire
  , VkFeature (..), VkRequire (..)
  ) where


import           Control.Monad.Trans.Class
import           Data.Conduit
import           Data.Maybe
import           Data.Semigroup
import           Data.Text                 (Text)
import           Data.XML.Types
import           Text.XML.Stream.Parse

import           VkXml.CommonTypes
import           VkXml.Parser
import           VkXml.Sections.Enums


data VkFeature
  = VkFeature
  { api     :: Text
  , name    :: Text
  , number  :: Text
  , comment :: Text
  , reqList :: [VkRequire]
  } deriving Show

--  "require" tags
-- https://www.khronos.org/registry/vulkan/specs/1.0/registry.html#tag-required


data VkRequire
  = VkRequire
  { comment      :: Text
  , requireExts  :: [VkExtensionName]
  , requireTypes :: [VkTypeName]
  , requireEnums :: [VkEnum]
  , requireComms :: [VkCommandName]
  } deriving Show

-- | Try to parse current tag as being "feature",
--
--   * If tag name does not match, return events upstream as leftovers
--   * If failed to parse tag "feature", throw an exception
parseFeature :: VkXmlParser m => Sink Event m (Maybe VkFeature)
parseFeature = parseTagForceAttrs "feature"
    ((,,,) <$> forceAttr "api"
           <*> forceAttr "name"
           <*> forceAttr "number"
           <*> forceAttr "comment"
    ) $ \(api, name, number, comment) -> do
  reqList <- many (parseVkRequire 0 [])
  pure VkFeature {..}

parseVkRequire :: VkXmlParser m
               => Int
               -> [VkExtensionName] -- ^ Extension names that are already required
               -> Sink Event m (Maybe VkRequire)
parseVkRequire extN baseExtReqs
    = parseTagForceAttrs "require" parseAttrs $ \iReq ->
        foldr ($) iReq <$> manyIgnore
            parseIt
          ( ignoreTreeContent "comment" )

  where
    -- https://www.khronos.org/registry/vulkan/specs/1.0/registry.html 19.1
    parseAttrs = lift $ do
      comm     <- fromMaybe mempty <$> attr "comment"
      mext     <- fmap VkExtensionName <$> attr "extension"
      mprofile <- attr "profile"
      mapi     <- attr "api"
      return
        VkRequire
          { comment      = comm
              <:> maybe mempty (\s -> "profile = @" <> s <> "@") mprofile
              <:> maybe mempty (\s -> "api = @" <> s <> "@") mapi
          , requireExts  = maybe baseExtReqs (:baseExtReqs) mext
          , requireTypes = []
          , requireEnums = []
          , requireComms = []
          }

    parseIt = choose
        [ parseTagForceAttrs "type"
            (VkTypeName <$> forceAttr "name")
            (\x -> pure $ \r -> r {requireTypes = x : requireTypes r})
        , parseTagForceAttrs "command"
            (VkCommandName <$> forceAttr "name")
            (\x -> pure $ \r -> r {requireComms = x : requireComms r})
        , parseVkEnum extN Nothing >>= \case
              [] -> pure Nothing
              es -> pure . Just $ \r -> r {requireEnums = es ++ requireEnums r}
        ]
