# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "J:/ho-ho/External_c++_libs/TF_Lite/tflite_build/flatbuffers")
  file(MAKE_DIRECTORY "J:/ho-ho/External_c++_libs/TF_Lite/tflite_build/flatbuffers")
endif()
file(MAKE_DIRECTORY
  "J:/ho-ho/External_c++_libs/TF_Lite/tflite_build/flatbuffers-flatc/src/flatbuffers-flatc-build"
  "J:/ho-ho/External_c++_libs/TF_Lite/tflite_build/flatbuffers-flatc"
  "J:/ho-ho/External_c++_libs/TF_Lite/tflite_build/flatbuffers-flatc/tmp"
  "J:/ho-ho/External_c++_libs/TF_Lite/tflite_build/flatbuffers-flatc/src/flatbuffers-flatc-stamp"
  "J:/ho-ho/External_c++_libs/TF_Lite/tflite_build/flatbuffers-flatc/src"
  "J:/ho-ho/External_c++_libs/TF_Lite/tflite_build/flatbuffers-flatc/src/flatbuffers-flatc-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "J:/ho-ho/External_c++_libs/TF_Lite/tflite_build/flatbuffers-flatc/src/flatbuffers-flatc-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "J:/ho-ho/External_c++_libs/TF_Lite/tflite_build/flatbuffers-flatc/src/flatbuffers-flatc-stamp${cfgdir}") # cfgdir has leading slash
endif()
