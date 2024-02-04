cmake_minimum_required(VERSION 3.15)
project(XeEngine CXX)

add_compile_definitions(PROJECT_NAME="${PROJECT_NAME}" PROJECT_DIR="${CMAKE_CURRENT_SOURCE_DIR}")

add_library(xe-engine
        Camera.h
        Material.h
        ColorMaterial.cpp ColorMaterial.h
        Scene.cpp Scene.h
        Mesh.cpp Mesh.h
        ../Engine/mesh_loader.cpp ../Engine/mesh_loader.h
        Node.cpp Node.h
        ../Engine/PhongMaterial.cpp ../Engine/PhongMaterial.h
        stb_image.cpp lights.h
        ../Engine/utils.h ../Engine/utils.cpp)

target_link_libraries(xe-engine PUBLIC objreader PRIVATE spdlog::spdlog)