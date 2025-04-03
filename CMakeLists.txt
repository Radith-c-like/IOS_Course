cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_compile_options(/Zc:__cplusplus)

set(CMAKE_AUTOMOC ON)

project(lab4)

include_directories("C:\\Qt\\6.10.0\\msvc2022_64\\include\\QtWidgets"
                    "C:\\Qt\\6.10.0\\msvc2022_64\\include\\QtCore"
                    "C:\\Qt\\6.10.0\\msvc2022_64\\include")

link_directories("C:\\Qt\\6.10.0\\msvc2022_64\\lib")

set(Qt6Widgets_DIR "C:\\Qt\\6.10.0\\msvc2022_64\\lib\\cmake\\Qt6Widgets")
find_package(Qt6Widgets REQUIRED)
set(Qt6Core_DIR "C:\\Qt\\6.10.0\\msvc2022_64\\lib\\cmake\\Qt6Core")
find_package(Qt6Core REQUIRED)

add_executable(lab4 main.cpp first.cpp)

target_link_libraries(lab4 PRIVATE Qt6::Widgets Qt6::Core)