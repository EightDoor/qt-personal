cmake_minimum_required(VERSION 3.16)

project(qt_personal_project VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTORCC ON)


find_package(Qt6 6.2 COMPONENTS Qml Quick REQUIRED)

qt_add_executable(appqt_personal_project
    main.cpp
    assets.qrc
)

qt_add_qml_module(appqt_personal_project
    URI qt_personal_project
    VERSION 1.0
    QML_FILES
    main.qml

    src/Layout/Header.qml
    src/Layout/Footer.qml
    src/Layout/Content.qml
    src/Layout/ContentMenu.qml
    src/Layout/ContentBody.qml
    src/Layout/Base.qml
)

set_target_properties(appqt_personal_project PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_compile_definitions(appqt_personal_project
    PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(appqt_personal_project
    PRIVATE Qt6::Quick
    PRIVATE Qt6::Qml
    )
