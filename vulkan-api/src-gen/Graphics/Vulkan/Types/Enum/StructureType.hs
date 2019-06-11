{-# OPTIONS_HADDOCK ignore-exports#-}
{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE PatternSynonyms            #-}
{-# LANGUAGE Strict                     #-}
module Graphics.Vulkan.Types.Enum.StructureType
       (VkStructureType(VkStructureType,
                        VK_STRUCTURE_TYPE_APPLICATION_INFO,
                        VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
                        VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO,
                        VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO,
                        VK_STRUCTURE_TYPE_SUBMIT_INFO,
                        VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO,
                        VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE,
                        VK_STRUCTURE_TYPE_BIND_SPARSE_INFO,
                        VK_STRUCTURE_TYPE_FENCE_CREATE_INFO,
                        VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO,
                        VK_STRUCTURE_TYPE_EVENT_CREATE_INFO,
                        VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO,
                        VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO,
                        VK_STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO,
                        VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO,
                        VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO,
                        VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO,
                        VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO,
                        VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO,
                        VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO,
                        VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO,
                        VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO,
                        VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO,
                        VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO,
                        VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO,
                        VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO,
                        VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO,
                        VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO,
                        VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO,
                        VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO,
                        VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO,
                        VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO,
                        VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO,
                        VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO,
                        VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO,
                        VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET,
                        VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET,
                        VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO,
                        VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO,
                        VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
                        VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
                        VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO,
                        VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO,
                        VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO,
                        VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER,
                        VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER,
                        VK_STRUCTURE_TYPE_MEMORY_BARRIER,
                        VK_STRUCTURE_TYPE_LOADER_INSTANCE_CREATE_INFO,
                        VK_STRUCTURE_TYPE_LOADER_DEVICE_CREATE_INFO))
       where
import Foreign.Storable                (Storable)
import GHC.Read                        (choose, expectP)
import Graphics.Vulkan.Marshal         (Int32)
import Text.ParserCombinators.ReadPrec (prec, step, (+++))
import Text.Read                       (Read (..), parens)
import Text.Read.Lex                   (Lexeme (..))

-- | Structure type enumerant
--
--   type = @enum@
--
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#VkStructureType VkStructureType registry at www.khronos.org>
newtype VkStructureType = VkStructureType Int32
                            deriving (Eq, Ord, Enum, Storable)

instance Show VkStructureType where
        showsPrec _ VK_STRUCTURE_TYPE_APPLICATION_INFO
          = showString "VK_STRUCTURE_TYPE_APPLICATION_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_SUBMIT_INFO
          = showString "VK_STRUCTURE_TYPE_SUBMIT_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO
          = showString "VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE
          = showString "VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE"
        showsPrec _ VK_STRUCTURE_TYPE_BIND_SPARSE_INFO
          = showString "VK_STRUCTURE_TYPE_BIND_SPARSE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_FENCE_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_FENCE_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_EVENT_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_EVENT_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO"
        showsPrec _
          VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO
          = showString
              "VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO"
        showsPrec _
          VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO
          = showString
              "VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO"
        showsPrec _
          VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO
          = showString
              "VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO
          = showString
              "VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO"
        showsPrec _
          VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO
          = showString
              "VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO"
        showsPrec _
          VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO
          = showString
              "VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO"
        showsPrec _
          VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO
          = showString
              "VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO"
        showsPrec _
          VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO
          = showString
              "VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO
          = showString "VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET
          = showString "VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET"
        showsPrec _ VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET
          = showString "VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET"
        showsPrec _ VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO
          = showString "VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO
          = showString "VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO
          = showString "VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO
          = showString "VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER
          = showString "VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER"
        showsPrec _ VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER
          = showString "VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER"
        showsPrec _ VK_STRUCTURE_TYPE_MEMORY_BARRIER
          = showString "VK_STRUCTURE_TYPE_MEMORY_BARRIER"
        showsPrec _ VK_STRUCTURE_TYPE_LOADER_INSTANCE_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_LOADER_INSTANCE_CREATE_INFO"
        showsPrec _ VK_STRUCTURE_TYPE_LOADER_DEVICE_CREATE_INFO
          = showString "VK_STRUCTURE_TYPE_LOADER_DEVICE_CREATE_INFO"
        showsPrec p (VkStructureType x)
          = showParen (p >= 11)
              (showString "VkStructureType " . showsPrec 11 x)

instance Read VkStructureType where
        readPrec
          = parens
              (choose
                 [("VK_STRUCTURE_TYPE_APPLICATION_INFO",
                   pure VK_STRUCTURE_TYPE_APPLICATION_INFO),
                  ("VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_SUBMIT_INFO",
                   pure VK_STRUCTURE_TYPE_SUBMIT_INFO),
                  ("VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO",
                   pure VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO),
                  ("VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE",
                   pure VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE),
                  ("VK_STRUCTURE_TYPE_BIND_SPARSE_INFO",
                   pure VK_STRUCTURE_TYPE_BIND_SPARSE_INFO),
                  ("VK_STRUCTURE_TYPE_FENCE_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_FENCE_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_EVENT_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_EVENT_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO",
                   pure VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO),
                  ("VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET",
                   pure VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET),
                  ("VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET",
                   pure VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET),
                  ("VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO",
                   pure VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO),
                  ("VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO",
                   pure VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO),
                  ("VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO",
                   pure VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO),
                  ("VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO",
                   pure VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO),
                  ("VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER",
                   pure VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER),
                  ("VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER",
                   pure VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER),
                  ("VK_STRUCTURE_TYPE_MEMORY_BARRIER",
                   pure VK_STRUCTURE_TYPE_MEMORY_BARRIER),
                  ("VK_STRUCTURE_TYPE_LOADER_INSTANCE_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_LOADER_INSTANCE_CREATE_INFO),
                  ("VK_STRUCTURE_TYPE_LOADER_DEVICE_CREATE_INFO",
                   pure VK_STRUCTURE_TYPE_LOADER_DEVICE_CREATE_INFO)]
                 +++
                 prec 10
                   (expectP (Ident "VkStructureType") >>
                      (VkStructureType <$> step readPrec)))

pattern VK_STRUCTURE_TYPE_APPLICATION_INFO :: VkStructureType

pattern VK_STRUCTURE_TYPE_APPLICATION_INFO = VkStructureType 0

pattern VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO :: VkStructureType

pattern VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO = VkStructureType 1

pattern VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO =
        VkStructureType 2

pattern VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO :: VkStructureType

pattern VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO = VkStructureType 3

pattern VK_STRUCTURE_TYPE_SUBMIT_INFO :: VkStructureType

pattern VK_STRUCTURE_TYPE_SUBMIT_INFO = VkStructureType 4

pattern VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO :: VkStructureType

pattern VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO = VkStructureType 5

pattern VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE :: VkStructureType

pattern VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE = VkStructureType 6

pattern VK_STRUCTURE_TYPE_BIND_SPARSE_INFO :: VkStructureType

pattern VK_STRUCTURE_TYPE_BIND_SPARSE_INFO = VkStructureType 7

pattern VK_STRUCTURE_TYPE_FENCE_CREATE_INFO :: VkStructureType

pattern VK_STRUCTURE_TYPE_FENCE_CREATE_INFO = VkStructureType 8

pattern VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO :: VkStructureType

pattern VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO = VkStructureType 9

pattern VK_STRUCTURE_TYPE_EVENT_CREATE_INFO :: VkStructureType

pattern VK_STRUCTURE_TYPE_EVENT_CREATE_INFO = VkStructureType 10

pattern VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO :: VkStructureType

pattern VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO =
        VkStructureType 11

pattern VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO :: VkStructureType

pattern VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO = VkStructureType 12

pattern VK_STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO =
        VkStructureType 13

pattern VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO :: VkStructureType

pattern VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO = VkStructureType 14

pattern VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO :: VkStructureType

pattern VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO =
        VkStructureType 15

pattern VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO =
        VkStructureType 16

pattern VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO =
        VkStructureType 17

pattern VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO =
        VkStructureType 18

pattern VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO
        :: VkStructureType

pattern VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO =
        VkStructureType 19

pattern VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO
        :: VkStructureType

pattern VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO
        = VkStructureType 20

pattern VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO
        :: VkStructureType

pattern VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO =
        VkStructureType 21

pattern VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO =
        VkStructureType 22

pattern VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO
        :: VkStructureType

pattern VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO
        = VkStructureType 23

pattern VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO =
        VkStructureType 24

pattern VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO
        :: VkStructureType

pattern VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO
        = VkStructureType 25

pattern VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO =
        VkStructureType 26

pattern VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO =
        VkStructureType 27

pattern VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO =
        VkStructureType 28

pattern VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO =
        VkStructureType 29

pattern VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO =
        VkStructureType 30

pattern VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO :: VkStructureType

pattern VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO = VkStructureType 31

pattern VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO =
        VkStructureType 32

pattern VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO =
        VkStructureType 33

pattern VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO =
        VkStructureType 34

pattern VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET :: VkStructureType

pattern VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET = VkStructureType 35

pattern VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET :: VkStructureType

pattern VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET = VkStructureType 36

pattern VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO =
        VkStructureType 37

pattern VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO =
        VkStructureType 38

pattern VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO =
        VkStructureType 39

pattern VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO =
        VkStructureType 40

pattern VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO =
        VkStructureType 41

pattern VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO =
        VkStructureType 42

pattern VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO :: VkStructureType

pattern VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO =
        VkStructureType 43

pattern VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER :: VkStructureType

pattern VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER =
        VkStructureType 44

pattern VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER :: VkStructureType

pattern VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER = VkStructureType 45

pattern VK_STRUCTURE_TYPE_MEMORY_BARRIER :: VkStructureType

pattern VK_STRUCTURE_TYPE_MEMORY_BARRIER = VkStructureType 46

-- | Reserved for internal use by the loader, layers, and ICDs
pattern VK_STRUCTURE_TYPE_LOADER_INSTANCE_CREATE_INFO ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_LOADER_INSTANCE_CREATE_INFO =
        VkStructureType 47

-- | Reserved for internal use by the loader, layers, and ICDs
pattern VK_STRUCTURE_TYPE_LOADER_DEVICE_CREATE_INFO ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_LOADER_DEVICE_CREATE_INFO =
        VkStructureType 48
