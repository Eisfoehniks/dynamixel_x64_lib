CONFIG -= qt

TEMPLATE = lib
DEFINES += WINDLLEXPORT
INCLUDEPATH += include/dynamixel_sdk/

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    src/dynamixel_sdk/group_bulk_read.cpp \
    src/dynamixel_sdk/group_bulk_write.cpp \
    src/dynamixel_sdk/group_sync_read.cpp \
    src/dynamixel_sdk/group_sync_write.cpp \
    src/dynamixel_sdk/packet_handler.cpp \
    src/dynamixel_sdk/port_handler.cpp \
    src/dynamixel_sdk/port_handler_arduino.cpp \
    src/dynamixel_sdk/port_handler_linux.cpp \
    src/dynamixel_sdk/port_handler_mac.cpp \
    src/dynamixel_sdk/port_handler_windows.cpp \
    src/dynamixel_sdk/protocol1_packet_handler.cpp \
    src/dynamixel_sdk/protocol2_packet_handler.cpp

HEADERS += \
    include/dynamixel_sdk/dynamixel_sdk.h \
    include/dynamixel_sdk/group_bulk_read.h \
    include/dynamixel_sdk/group_bulk_write.h \
    include/dynamixel_sdk/group_sync_read.h \
    include/dynamixel_sdk/group_sync_write.h \
    include/dynamixel_sdk/packet_handler.h \
    include/dynamixel_sdk/port_handler.h \
    include/dynamixel_sdk/port_handler_arduino.h \
    include/dynamixel_sdk/port_handler_linux.h \
    include/dynamixel_sdk/port_handler_mac.h \
    include/dynamixel_sdk/port_handler_windows.h \
    include/dynamixel_sdk/protocol1_packet_handler.h \
    include/dynamixel_sdk/protocol2_packet_handler.h

# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target
