{-# OPTIONS_GHC -fno-warn-missing-pattern-synonym-signatures#-}
{-# OPTIONS_GHC -fno-warn-orphans#-}
{-# OPTIONS_HADDOCK not-home#-}
{-# LANGUAGE DataKinds                #-}
{-# LANGUAGE FlexibleInstances        #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE MagicHash                #-}
{-# LANGUAGE PatternSynonyms          #-}
{-# LANGUAGE Strict                   #-}
{-# LANGUAGE TypeFamilies             #-}
{-# LANGUAGE ViewPatterns             #-}
module Graphics.Vulkan.Ext.VK_KHR_get_memory_requirements2
       (-- * Vulkan extension: @VK_KHR_get_memory_requirements2@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @Jason Ekstrand @jekstrand@
        --
        -- author: @KHR@
        --
        -- type: @device@
        --
        -- Extension number: @147@
        module Graphics.Vulkan.Types.Struct.VkBufferMemoryRequirementsInfo2KHR,
        module Graphics.Vulkan.Types.Struct.VkImageMemoryRequirementsInfo2KHR,
        module Graphics.Vulkan.Types.Struct.VkImageSparseMemoryRequirementsInfo2KHR,
        module Graphics.Vulkan.Types.Struct.VkMemoryRequirements2KHR,
        module Graphics.Vulkan.Types.Struct.VkSparseImageMemoryRequirements2KHR,
        VkGetImageMemoryRequirements2KHR,
        pattern VkGetImageMemoryRequirements2KHR,
        HS_vkGetImageMemoryRequirements2KHR,
        PFN_vkGetImageMemoryRequirements2KHR,
        unwrapVkGetImageMemoryRequirements2KHR,
        VkGetBufferMemoryRequirements2KHR,
        pattern VkGetBufferMemoryRequirements2KHR,
        HS_vkGetBufferMemoryRequirements2KHR,
        PFN_vkGetBufferMemoryRequirements2KHR,
        unwrapVkGetBufferMemoryRequirements2KHR,
        VkGetImageSparseMemoryRequirements2KHR,
        pattern VkGetImageSparseMemoryRequirements2KHR,
        HS_vkGetImageSparseMemoryRequirements2KHR,
        PFN_vkGetImageSparseMemoryRequirements2KHR,
        unwrapVkGetImageSparseMemoryRequirements2KHR,
        module Graphics.Vulkan.Marshal,
        module Graphics.Vulkan.Types.BaseTypes,
        module Graphics.Vulkan.Types.Enum.VkImageAspectFlags,
        module Graphics.Vulkan.Types.Enum.VkSparseImageFormatFlags,
        module Graphics.Vulkan.Types.Enum.VkStructureType,
        module Graphics.Vulkan.Types.Handles,
        module Graphics.Vulkan.Types.Struct.VkBufferMemoryRequirementsInfo2,
        module Graphics.Vulkan.Types.Struct.VkExtent3D,
        module Graphics.Vulkan.Types.Struct.VkImageMemoryRequirementsInfo2,
        module Graphics.Vulkan.Types.Struct.VkImageSparseMemoryRequirementsInfo2,
        module Graphics.Vulkan.Types.Struct.VkMemoryRequirements,
        module Graphics.Vulkan.Types.Struct.VkMemoryRequirements2,
        module Graphics.Vulkan.Types.Struct.VkSparseImageFormatProperties,
        module Graphics.Vulkan.Types.Struct.VkSparseImageMemoryRequirements,
        module Graphics.Vulkan.Types.Struct.VkSparseImageMemoryRequirements2,
        VK_KHR_GET_MEMORY_REQUIREMENTS_2_SPEC_VERSION,
        pattern VK_KHR_GET_MEMORY_REQUIREMENTS_2_SPEC_VERSION,
        VK_KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME,
        pattern VK_KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME,
        pattern VK_STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2_KHR,
        pattern VK_STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2_KHR,
        pattern VK_STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2_KHR,
        pattern VK_STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2_KHR,
        pattern VK_STRUCTURE_TYPE_SPARSE_IMAGE_MEMORY_REQUIREMENTS_2_KHR)
       where
import           GHC.Ptr
                                                                                       (Ptr (..))
import           Graphics.Vulkan.Core_1_1
                                                                                       (pattern VK_STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2,
                                                                                       pattern VK_STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2,
                                                                                       pattern VK_STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2,
                                                                                       pattern VK_STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2,
                                                                                       pattern VK_STRUCTURE_TYPE_SPARSE_IMAGE_MEMORY_REQUIREMENTS_2)
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.Proc
                                                                                       (VulkanProc (..))
import           Graphics.Vulkan.Types.BaseTypes
import           Graphics.Vulkan.Types.Enum.VkImageAspectFlags
import           Graphics.Vulkan.Types.Enum.VkSparseImageFormatFlags
import           Graphics.Vulkan.Types.Enum.VkStructureType
import           Graphics.Vulkan.Types.Handles
import           Graphics.Vulkan.Types.Struct.VkBufferMemoryRequirementsInfo2
import           Graphics.Vulkan.Types.Struct.VkBufferMemoryRequirementsInfo2KHR
import           Graphics.Vulkan.Types.Struct.VkExtent3D
import           Graphics.Vulkan.Types.Struct.VkImageMemoryRequirementsInfo2
import           Graphics.Vulkan.Types.Struct.VkImageMemoryRequirementsInfo2KHR
import           Graphics.Vulkan.Types.Struct.VkImageSparseMemoryRequirementsInfo2
import           Graphics.Vulkan.Types.Struct.VkImageSparseMemoryRequirementsInfo2KHR
import           Graphics.Vulkan.Types.Struct.VkMemoryRequirements
import           Graphics.Vulkan.Types.Struct.VkMemoryRequirements2
import           Graphics.Vulkan.Types.Struct.VkMemoryRequirements2KHR
import           Graphics.Vulkan.Types.Struct.VkSparseImageFormatProperties
import           Graphics.Vulkan.Types.Struct.VkSparseImageMemoryRequirements
import           Graphics.Vulkan.Types.Struct.VkSparseImageMemoryRequirements2
import           Graphics.Vulkan.Types.Struct.VkSparseImageMemoryRequirements2KHR

pattern VkGetImageMemoryRequirements2KHR :: CString

pattern VkGetImageMemoryRequirements2KHR <-
        (is_VkGetImageMemoryRequirements2KHR -> True)
  where VkGetImageMemoryRequirements2KHR
          = _VkGetImageMemoryRequirements2KHR

{-# INLINE _VkGetImageMemoryRequirements2KHR #-}

_VkGetImageMemoryRequirements2KHR :: CString
_VkGetImageMemoryRequirements2KHR
  = Ptr "vkGetImageMemoryRequirements2KHR\NUL"#

{-# INLINE is_VkGetImageMemoryRequirements2KHR #-}

is_VkGetImageMemoryRequirements2KHR :: CString -> Bool
is_VkGetImageMemoryRequirements2KHR
  = (EQ ==) . cmpCStrings _VkGetImageMemoryRequirements2KHR

type VkGetImageMemoryRequirements2KHR =
     "vkGetImageMemoryRequirements2KHR"

-- | This is an alias for `vkGetImageMemoryRequirements2`.
--
--   > () vkGetImageMemoryRequirements2KHR
--   >     ( VkDevice device
--   >     , const VkImageMemoryRequirementsInfo2* pInfo
--   >     , VkMemoryRequirements2* pMemoryRequirements
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetImageMemoryRequirements2KHR vkGetImageMemoryRequirements2KHR registry at www.khronos.org>
type HS_vkGetImageMemoryRequirements2KHR =
     VkDevice -- ^ device
              ->
       Ptr VkImageMemoryRequirementsInfo2 -- ^ pInfo
                                          ->
         Ptr VkMemoryRequirements2 -- ^ pMemoryRequirements
                                   -> IO ()

type PFN_vkGetImageMemoryRequirements2KHR =
     FunPtr HS_vkGetImageMemoryRequirements2KHR

foreign import ccall "dynamic"
               unwrapVkGetImageMemoryRequirements2KHR ::
               PFN_vkGetImageMemoryRequirements2KHR ->
                 HS_vkGetImageMemoryRequirements2KHR

instance VulkanProc "vkGetImageMemoryRequirements2KHR" where
        type VkProcType "vkGetImageMemoryRequirements2KHR" =
             HS_vkGetImageMemoryRequirements2KHR
        vkProcSymbol = _VkGetImageMemoryRequirements2KHR

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkGetImageMemoryRequirements2KHR

        {-# INLINE unwrapVkProcPtr #-}

pattern VkGetBufferMemoryRequirements2KHR :: CString

pattern VkGetBufferMemoryRequirements2KHR <-
        (is_VkGetBufferMemoryRequirements2KHR -> True)
  where VkGetBufferMemoryRequirements2KHR
          = _VkGetBufferMemoryRequirements2KHR

{-# INLINE _VkGetBufferMemoryRequirements2KHR #-}

_VkGetBufferMemoryRequirements2KHR :: CString
_VkGetBufferMemoryRequirements2KHR
  = Ptr "vkGetBufferMemoryRequirements2KHR\NUL"#

{-# INLINE is_VkGetBufferMemoryRequirements2KHR #-}

is_VkGetBufferMemoryRequirements2KHR :: CString -> Bool
is_VkGetBufferMemoryRequirements2KHR
  = (EQ ==) . cmpCStrings _VkGetBufferMemoryRequirements2KHR

type VkGetBufferMemoryRequirements2KHR =
     "vkGetBufferMemoryRequirements2KHR"

-- | This is an alias for `vkGetBufferMemoryRequirements2`.
--
--   > () vkGetBufferMemoryRequirements2KHR
--   >     ( VkDevice device
--   >     , const VkBufferMemoryRequirementsInfo2* pInfo
--   >     , VkMemoryRequirements2* pMemoryRequirements
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetBufferMemoryRequirements2KHR vkGetBufferMemoryRequirements2KHR registry at www.khronos.org>
type HS_vkGetBufferMemoryRequirements2KHR =
     VkDevice -- ^ device
              ->
       Ptr VkBufferMemoryRequirementsInfo2 -- ^ pInfo
                                           ->
         Ptr VkMemoryRequirements2 -- ^ pMemoryRequirements
                                   -> IO ()

type PFN_vkGetBufferMemoryRequirements2KHR =
     FunPtr HS_vkGetBufferMemoryRequirements2KHR

foreign import ccall "dynamic"
               unwrapVkGetBufferMemoryRequirements2KHR ::
               PFN_vkGetBufferMemoryRequirements2KHR ->
                 HS_vkGetBufferMemoryRequirements2KHR

instance VulkanProc "vkGetBufferMemoryRequirements2KHR" where
        type VkProcType "vkGetBufferMemoryRequirements2KHR" =
             HS_vkGetBufferMemoryRequirements2KHR
        vkProcSymbol = _VkGetBufferMemoryRequirements2KHR

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkGetBufferMemoryRequirements2KHR

        {-# INLINE unwrapVkProcPtr #-}

pattern VkGetImageSparseMemoryRequirements2KHR :: CString

pattern VkGetImageSparseMemoryRequirements2KHR <-
        (is_VkGetImageSparseMemoryRequirements2KHR -> True)
  where VkGetImageSparseMemoryRequirements2KHR
          = _VkGetImageSparseMemoryRequirements2KHR

{-# INLINE _VkGetImageSparseMemoryRequirements2KHR #-}

_VkGetImageSparseMemoryRequirements2KHR :: CString
_VkGetImageSparseMemoryRequirements2KHR
  = Ptr "vkGetImageSparseMemoryRequirements2KHR\NUL"#

{-# INLINE is_VkGetImageSparseMemoryRequirements2KHR #-}

is_VkGetImageSparseMemoryRequirements2KHR :: CString -> Bool
is_VkGetImageSparseMemoryRequirements2KHR
  = (EQ ==) . cmpCStrings _VkGetImageSparseMemoryRequirements2KHR

type VkGetImageSparseMemoryRequirements2KHR =
     "vkGetImageSparseMemoryRequirements2KHR"

-- | This is an alias for `vkGetImageSparseMemoryRequirements2`.
--
--   > () vkGetImageSparseMemoryRequirements2KHR
--   >     ( VkDevice device
--   >     , const VkImageSparseMemoryRequirementsInfo2* pInfo
--   >     , uint32_t* pSparseMemoryRequirementCount
--   >     , VkSparseImageMemoryRequirements2* pSparseMemoryRequirements
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetImageSparseMemoryRequirements2KHR vkGetImageSparseMemoryRequirements2KHR registry at www.khronos.org>
type HS_vkGetImageSparseMemoryRequirements2KHR =
     VkDevice -- ^ device
              ->
       Ptr VkImageSparseMemoryRequirementsInfo2 -- ^ pInfo
                                                ->
         Ptr Word32 -- ^ pSparseMemoryRequirementCount
                    -> Ptr VkSparseImageMemoryRequirements2 -- ^ pSparseMemoryRequirements
                                                            -> IO ()

type PFN_vkGetImageSparseMemoryRequirements2KHR =
     FunPtr HS_vkGetImageSparseMemoryRequirements2KHR

foreign import ccall "dynamic"
               unwrapVkGetImageSparseMemoryRequirements2KHR ::
               PFN_vkGetImageSparseMemoryRequirements2KHR ->
                 HS_vkGetImageSparseMemoryRequirements2KHR

instance VulkanProc "vkGetImageSparseMemoryRequirements2KHR" where
        type VkProcType "vkGetImageSparseMemoryRequirements2KHR" =
             HS_vkGetImageSparseMemoryRequirements2KHR
        vkProcSymbol = _VkGetImageSparseMemoryRequirements2KHR

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkGetImageSparseMemoryRequirements2KHR

        {-# INLINE unwrapVkProcPtr #-}

pattern VK_KHR_GET_MEMORY_REQUIREMENTS_2_SPEC_VERSION ::
        (Num a, Eq a) => a

pattern VK_KHR_GET_MEMORY_REQUIREMENTS_2_SPEC_VERSION = 1

type VK_KHR_GET_MEMORY_REQUIREMENTS_2_SPEC_VERSION = 1

pattern VK_KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME :: CString

pattern VK_KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME <-
        (is_VK_KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME -> True)
  where VK_KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME
          = _VK_KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME

{-# INLINE _VK_KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME #-}

_VK_KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME :: CString
_VK_KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME
  = Ptr "VK_KHR_get_memory_requirements2\NUL"#

{-# INLINE is_VK_KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME #-}

is_VK_KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME ::
                                                   CString -> Bool
is_VK_KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME
  = (EQ ==) .
      cmpCStrings _VK_KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME

type VK_KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME =
     "VK_KHR_get_memory_requirements2"

pattern VK_STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2_KHR =
        VK_STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2

pattern VK_STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2_KHR =
        VK_STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2

pattern VK_STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2_KHR
        = VK_STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2

pattern VK_STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2_KHR =
        VK_STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2

pattern VK_STRUCTURE_TYPE_SPARSE_IMAGE_MEMORY_REQUIREMENTS_2_KHR =
        VK_STRUCTURE_TYPE_SPARSE_IMAGE_MEMORY_REQUIREMENTS_2
