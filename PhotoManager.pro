TEMPLATE = app

QT += qml quick widgets

SOURCES += main.cpp \
    application.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

CONFIG += console

CONFIG += gui

QT += core
QT += qml quick
QT += declarative

HEADERS += \
    application.h
