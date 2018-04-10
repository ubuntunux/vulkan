{-# OPTIONS_HADDOCK ignore-exports#-}
{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE PatternSynonyms            #-}
{-# LANGUAGE Strict                     #-}
module Graphics.Vulkan.Types.Enum.VkStencilOp
       (VkStencilOp(VkStencilOp, VK_STENCIL_OP_KEEP, VK_STENCIL_OP_ZERO,
                    VK_STENCIL_OP_REPLACE, VK_STENCIL_OP_INCREMENT_AND_CLAMP,
                    VK_STENCIL_OP_DECREMENT_AND_CLAMP, VK_STENCIL_OP_INVERT,
                    VK_STENCIL_OP_INCREMENT_AND_WRAP,
                    VK_STENCIL_OP_DECREMENT_AND_WRAP))
       where
import           Data.Data                       (Data)
import           Foreign.Storable                (Storable)
import           GHC.Generics                    (Generic)
import           GHC.Read                        (choose, expectP)
import           Graphics.Vulkan.Marshal         (Int32)
import           Text.ParserCombinators.ReadPrec (prec, step, (+++))
import           Text.Read                       (Read (..), parens)
import           Text.Read.Lex                   (Lexeme (..))

-- | type = @enum@
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#VkStencilOp VkStencilOp registry at www.khronos.org>
newtype VkStencilOp = VkStencilOp Int32
                        deriving (Eq, Ord, Num, Bounded, Storable, Enum, Data, Generic)

instance Show VkStencilOp where
        showsPrec _ VK_STENCIL_OP_KEEP = showString "VK_STENCIL_OP_KEEP"
        showsPrec _ VK_STENCIL_OP_ZERO = showString "VK_STENCIL_OP_ZERO"
        showsPrec _ VK_STENCIL_OP_REPLACE
          = showString "VK_STENCIL_OP_REPLACE"
        showsPrec _ VK_STENCIL_OP_INCREMENT_AND_CLAMP
          = showString "VK_STENCIL_OP_INCREMENT_AND_CLAMP"
        showsPrec _ VK_STENCIL_OP_DECREMENT_AND_CLAMP
          = showString "VK_STENCIL_OP_DECREMENT_AND_CLAMP"
        showsPrec _ VK_STENCIL_OP_INVERT
          = showString "VK_STENCIL_OP_INVERT"
        showsPrec _ VK_STENCIL_OP_INCREMENT_AND_WRAP
          = showString "VK_STENCIL_OP_INCREMENT_AND_WRAP"
        showsPrec _ VK_STENCIL_OP_DECREMENT_AND_WRAP
          = showString "VK_STENCIL_OP_DECREMENT_AND_WRAP"
        showsPrec p (VkStencilOp x)
          = showParen (p >= 11) (showString "VkStencilOp " . showsPrec 11 x)

instance Read VkStencilOp where
        readPrec
          = parens
              (choose
                 [("VK_STENCIL_OP_KEEP", pure VK_STENCIL_OP_KEEP),
                  ("VK_STENCIL_OP_ZERO", pure VK_STENCIL_OP_ZERO),
                  ("VK_STENCIL_OP_REPLACE", pure VK_STENCIL_OP_REPLACE),
                  ("VK_STENCIL_OP_INCREMENT_AND_CLAMP",
                   pure VK_STENCIL_OP_INCREMENT_AND_CLAMP),
                  ("VK_STENCIL_OP_DECREMENT_AND_CLAMP",
                   pure VK_STENCIL_OP_DECREMENT_AND_CLAMP),
                  ("VK_STENCIL_OP_INVERT", pure VK_STENCIL_OP_INVERT),
                  ("VK_STENCIL_OP_INCREMENT_AND_WRAP",
                   pure VK_STENCIL_OP_INCREMENT_AND_WRAP),
                  ("VK_STENCIL_OP_DECREMENT_AND_WRAP",
                   pure VK_STENCIL_OP_DECREMENT_AND_WRAP)]
                 +++
                 prec 10
                   (expectP (Ident "VkStencilOp") >> (VkStencilOp <$> step readPrec)))

pattern VK_STENCIL_OP_KEEP :: VkStencilOp

pattern VK_STENCIL_OP_KEEP = VkStencilOp 0

pattern VK_STENCIL_OP_ZERO :: VkStencilOp

pattern VK_STENCIL_OP_ZERO = VkStencilOp 1

pattern VK_STENCIL_OP_REPLACE :: VkStencilOp

pattern VK_STENCIL_OP_REPLACE = VkStencilOp 2

pattern VK_STENCIL_OP_INCREMENT_AND_CLAMP :: VkStencilOp

pattern VK_STENCIL_OP_INCREMENT_AND_CLAMP = VkStencilOp 3

pattern VK_STENCIL_OP_DECREMENT_AND_CLAMP :: VkStencilOp

pattern VK_STENCIL_OP_DECREMENT_AND_CLAMP = VkStencilOp 4

pattern VK_STENCIL_OP_INVERT :: VkStencilOp

pattern VK_STENCIL_OP_INVERT = VkStencilOp 5

pattern VK_STENCIL_OP_INCREMENT_AND_WRAP :: VkStencilOp

pattern VK_STENCIL_OP_INCREMENT_AND_WRAP = VkStencilOp 6

pattern VK_STENCIL_OP_DECREMENT_AND_WRAP :: VkStencilOp

pattern VK_STENCIL_OP_DECREMENT_AND_WRAP = VkStencilOp 7
