#-------------------------------------------------
#
# Project created by QtCreator 2016-07-27T09:14:07
#
#-------------------------------------------------

QT       += core gui core

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
CONFIG += c++11

DEFINES += QT_MESSAGELOGCONTEXT

isEmpty(TARGET) {
    TARGET = dde-shortcut-viewer
}


TEMPLATE = app


SOURCES += main.cpp\
    view/shortcutscene.cpp \
    view/mainwidget.cpp \
    commandlinemanager.cpp

HEADERS  += \
    view/shortcutscene.h \
    view/mainwidget.h \
    commandlinemanager.h


SUBDIRS += \
    QLogger/test/test.pro

DISTFILES += \
    QLogger/LICENSE \
    QLogger/README.md
include(../qlogger/cutelogger/cutelogger.pri)

isEmpty(PREFIX){
    PREFIX = /usr
}
BINDIR = $$PREFIX/bin

target.path = $$BINDIR

INSTALLS += target

