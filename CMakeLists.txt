cmake_minimum_required(VERSION 3.9)
project(Advanced_C___Graphics)
set(CMAKE_CXX_STANDARD 17)

#include(FindPkgConfig)
#pkg_check_modules(SDL2 REQUIRED sdl2)

find_package(SDL2 REQUIRED)
find_package(OpenGL REQUIRED)
find_package(GLEW REQUIRED)
if (GLEW_FOUND)
    include_directories($(GLEW_INCLUDE_DIRS))
    link_libraries(${GLEW_LIBRARIES})
endif ()

include_directories(Advanced_C___Graphics ${SDL2_INCLUDE_DIRS})
include_directories(GL)

add_executable(Advanced_C___Graphics src/main.cpp src/MainGame.cpp include/MainGame.h src/Sprite.cpp include/Sprite.h src/GLSLProgram.cpp include/GLSLProgram.h src/Errors.cpp include/Errors.h include/Vertex.h src/IOManager.cpp include/IOManager.h src/picoPNG.cpp include/picoPNG.h include/OpenGLTexture.h src/ImageLoader.cpp include/ImageLoader.h)

target_link_libraries(Advanced_C___Graphics ${SDL2_LIBRARIES} ${OPENGL_gl_LIBRARY})
