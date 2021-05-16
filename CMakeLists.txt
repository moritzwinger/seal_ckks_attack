cmake_minimum_required(VERSION 3.9...3.17)

# For older versions that do not automatically use highest allowed policy
if (${CMAKE_VERSION} VERSION_LESS 3.12)
    cmake_policy(VERSION ${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION})
endif ()

# Required for selecting MSVC runtime library
if (MSVC)
    cmake_policy(SET CMP0091 NEW)
endif ()

project(seal_ckks_attack
        VERSION 0.1
        LANGUAGES CXX)

#set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake/Modules" ${CMAKE_MODULE_PATH})

# Global flags aren't good CMAKE style, but these should work across pretty much all compilers
set(CXXFLAGS "--coverage --pedantic-errors -Wall -WError")

if (MSVC)
    message("Using MSVC")

    # Force static MSVC runtime library on Windows
    set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")

    # Switch MSVC into multi threaded mode
    add_compile_options(/MP)

    # Force MSVC to use slightly less broken template rules
    add_compile_options(/permissive-)

    # Force MSVC to conform to C++ standard's idea of exceptions
    add_compile_options(/EHsc)

    # Make (nearly) all warnings errors
    add_compile_options(/W4 /WX)

    # Try using variants
    add_compile_options(/std:c++17)

    # Don't force fopen_s (which is a MSVC-only thing)
    add_compile_definitions(_CRT_SECURE_NO_DEPRECATE)

    # Mark system headers as external
    # Treats all #include <..> as system includes, so requires some care from developers
    add_compile_options(/experimental:external /external:anglebrackets /external:W0)

endif ()

##############################
# Determine if SEAL is available
##############################

find_package(SEAL 3.6 CONFIG REQUIRED) # sets SEAL_FOUND variable

##############################
# TARGET: ast_opt
#
# The main ast_optimizer as a library
##############################

set(SOURCE_FILES
        ${seal_ckks_attack_SOURCE_DIR}/src/eval.cpp
        ${seal_ckks_attack_SOURCE_DIR}/src/seal_utils.cpp
        ${seal_ckks_attack_SOURCE_DIR}/src/seal_attack.cpp
        )

set(HEADER_ONLY_SOURCES
        ${seal_ckks_attack_SOURCE_DIR}/include/eval.h
        ${seal_ckks_attack_SOURCE_DIR}/include/seal_utils.h
        )

set(PUBLIC_HEADERS
        ${seal_ckks_attack_SOURCE_DIR}/include/eval.h
        ${seal_ckks_attack_SOURCE_DIR}/include/seal_utils.h
        )

# build a library out of the code to be used by the tests
add_library(ckks_attack ${SOURCE_FILES} ${HEADER_ONLY_SOURCES})
add_library(ckks_attack::ckks_attack ALIAS ckks_attack)
target_include_directories(ckks_attack PUBLIC
        $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:include>)
set_target_properties(ckks_attack PROPERTIES PUBLIC_HEADER "${PUBLIC_HEADERS}")
target_compile_features(ckks_attack PUBLIC cxx_std_17)

if (SEAL_FOUND)
    message("Enabling SEAL functionality")
    target_include_directories(ckks_attack PUBLIC ${SEAL_INCLUDE_DIRS})
    target_link_libraries(ckks_attack PUBLIC SEAL::seal)
    target_compile_definitions(ckks_attack PUBLIC -DHAVE_SEAL_BFV)
    target_compile_definitions(ckks_attack PUBLIC -DHAVE_SEAL_CKKS)
endif (SEAL_FOUND)


####################################################################################
## ast_opt installation
##
## ast_optimizer installed globally as a library
####################################################################################
# Create a Version File
include(CMakePackageConfigHelpers)
write_basic_package_version_file(
        ckks_attackConfigVersion.cmake
        VERSION ${PACKAGE_VERSION}
        COMPATIBILITY AnyNewerVersion
)

# Configure (i.e. generate) the ast_optConfig.cmake file and copy both it and the version to install
#configure_file(ckks_attackConfig.cmake.in ckks_attackConfig.cmake @ONLY)
install(FILES "${CMAKE_CURRENT_BINARY_DIR}/ckks_attackConfig.cmake"
        "${CMAKE_CURRENT_BINARY_DIR}/ckks_attackConfigVersion.cmake"
        DESTINATION lib/cmake/ckks_attack)

install(TARGETS ckks_attack
        EXPORT ckks_attackTargets
        LIBRARY DESTINATION lib
        ARCHIVE DESTINATION lib
        RUNTIME DESTINATION bin
        PUBLIC_HEADER DESTINATION include
        INCLUDES DESTINATION include/ckks_attack)

install(DIRECTORY "include/"
        DESTINATION "include")

install(EXPORT ckks_attackTargets
        FILE ckks_attackTargets.cmake
        NAMESPACE ckks_attack::
        DESTINATION lib/cmake/ckks_attack)


##############################
# TARGET: attack_demo
##############################

add_executable(attack_demo
        ${seal_ckks_attack_SOURCE_DIR}/src/eval.cpp
        ${seal_ckks_attack_SOURCE_DIR}/src/seal_utils.cpp
        ${seal_ckks_attack_SOURCE_DIR}/src/seal_attack.cpp
        )

target_link_libraries(attack_demo PRIVATE ckks_attack)

