#-------------------------------------------------
#
# Project created by QtCreator 2017-01-16T12:55:11
#
#-------------------------------------------------

QT       += core gui widgets multimedia

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Fill your Glass
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += "C:\dlib_build\include"

include(main/main.pri)
include(audioengine/audioplayer.pri)
include(soundSystem/soundSystem.pri)
include(opencv/opencv.pri)
include(opencv/videoengine.pri)
include(facedetection/facedetection.pri)

RESOURCES += \
    $$PWD/images.qrc \
    $$PWD/sounds.qrc

LIBS += -L"C:\dlib_build\lib" -ldlib

QMAKE_CXXFLAGS_RELEASE += /arch:AVX

QMAKE_CXXFLAGS += -DDLIB_JPEG_SUPPORT
