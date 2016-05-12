######################################################################
# Automatically generated by qmake (2.01a) Tue Oct 6 19:48:14 2009
# but modified by me to accomodate for the includes for qwt, hamlib and
# portaudio
######################################################################

TEMPLATE	= app
TARGET		= dab-rpi-0.996
QT		+= widgets network
CONFIG		+= console
QMAKE_CFLAGS	+=  -flto -ffast-math -g
QMAKE_CXXFLAGS	+=  -flto -ffast-math -g
QMAKE_LFLAGS	+=  -flto -g
#QMAKE_CFLAGS	+=  -pg
#QMAKE_CXXFLAGS	+=  -pg
#QMAKE_LFLAGS	+=  -pg
CONFIG		+= NO_SSE_SUPPORT 
#DEFINES	+= SIMPLE_SYNCHRONIZATION
DEFINES	+= FULL_CORRELATION
DEFINES	+= __BETTER_LOCK
DEPENDPATH += . \
	      ./src \
	      ./includes \
	      ./src/ofdm \
	      ./src/backend \
	      ./src/backend/audio \
	      ./src/backend/data \
	      ./src/output \
	      ./src/various \
	      ./src/input \
	      ./src/input/rawfiles \
	      ./src/input/wavfiles \
	      ./includes/ofdm \
	      ./includes/backend \
	      ./includes/backend/audio \
	      ./includes/backend/data \
	      ./includes/output \
	      ./includes/various 

INCLUDEPATH += . \
	      ./ \
	      ./src \
	      ./includes \
	      ./includes/ofdm \
	      ./includes/backend \
	      ./includes/backend/audio \
	      ./includes/backend/data \
	      ./includes/output \
	      ./includes/various \
	      ./src/input \
	      ./src/input/rawfiles \
	      ./src/input/wavfiles 

# Input
HEADERS += ./includes/dab-constants.h \
	   ./includes/ofdm/ofdm-processor.h \
	   ./includes/ofdm/ofdm-decoder.h \
	   ./includes/ofdm/phasereference.h \
	   ./includes/ofdm/phasetable.h \
	   ./includes/ofdm/freq-interleaver.h \
       ./includes/ofdm/find_ofdm_spectrum.h \
	   ./includes/backend/viterbi.h \
	   ./includes/backend/fic-handler.h \
	   ./includes/backend/msc-handler.h \
	   ./includes/backend/fib-processor.h  \
	   ./includes/backend/galois.h \
	   ./includes/backend/reed-solomon.h \
	   ./includes/backend/charsets.h \
	   ./includes/backend/firecode-checker.h \
	   ./includes/backend/dab-processor.h \
	   ./includes/backend/dab-virtual.h \
	   ./includes/backend/audio/dab-audio.h \
	   ./includes/backend/audio/mp2processor.h \
	   ./includes/backend/audio/mp4processor.h \
	   ./includes/backend/audio/faad-decoder.h \
	   ./includes/backend/data/msc-datagroup.h \
	   ./includes/backend/data/pad-handler.h \
	   ./includes/backend/data/virtual-datahandler.h \
	   ./includes/backend/data/ip-datahandler.h \
	   ./includes/backend/data/mot-databuilder.h \
	   ./includes/backend/data/mot-data.h \
	   ./includes/backend/data/journaline-datahandler.h \
	   ./includes/backend/deconvolve.h \
	   ./includes/output/audio-base.h \
	   ./includes/output/audiosink.h \
	   ./includes/output/fir-filters.h \
           ./includes/various/fft.h \
	   ./includes/various/ringbuffer.h \
	   ./includes/various/Xtan2.h \
	   ./src/input/virtual-input.h \
	   ./src/input/rawfiles/rawfiles.h \
	   ./src/input/wavfiles/wavfiles.h 

FORMS += ./src/input/filereader-widget.ui 

SOURCES += ./main.cpp \
	   ./src/ofdm/ofdm-processor.cpp \
	   ./src/ofdm/ofdm-decoder.cpp \
	   ./src/ofdm/phasereference.cpp \
	   ./src/ofdm/phasetable.cpp \
	   ./src/ofdm/freq-interleaver.cpp \
       ./src/ofdm/find_ofdm_spectrum.cpp \
	   ./src/backend/viterbi.cpp \
	   ./src/backend/fic-handler.cpp \
	   ./src/backend/msc-handler.cpp \
	   ./src/backend/deconvolve.cpp \
	   ./src/backend/fib-processor.cpp  \
	   ./src/backend/galois.cpp \
	   ./src/backend/reed-solomon.cpp \
	   ./src/backend/charsets.cpp \
	   ./src/backend/firecode-checker.cpp \
	   ./src/backend/dab-virtual.cpp \
	   ./src/backend/dab-processor.cpp \
	   ./src/backend/protTables.cpp \
	   ./src/backend/audio/dab-audio.cpp \
	   ./src/backend/audio/mp2processor.cpp \
	   ./src/backend/audio/mp4processor.cpp \
	   ./src/backend/data/pad-handler.cpp \
	   ./src/backend/data/msc-datagroup.cpp \
	   ./src/backend/data/virtual-datahandler.cpp \
	   ./src/backend/data/ip-datahandler.cpp \
	   ./src/backend/data/mot-databuilder.cpp \
	   ./src/backend/data/mot-data.cpp \
	   ./src/backend/data/journaline-datahandler.cpp \
	   ./src/output/audio-base.cpp \
	   ./src/output/audiosink.cpp \
	   ./src/output/fir-filters.cpp \
           ./src/various/fft.cpp \
	   ./src/various/Xtan2.cpp \
	   ./src/input/virtual-input.cpp \
	   ./src/input/rawfiles/rawfiles.cpp \
	   ./src/input/wavfiles/wavfiles.cpp 
#
#	for unix systems this is about it. Adapt when needed for naming
#	and locating libraries. If you do not need a device as
#	listed, just comment the line out.
unix {
CONFIG		+= dabstick_osmo
#CONFIG		+= dabstick_new
#CONFIG		+= sdrplay
CONFIG		+= rtl_tcp
#CONFIG		+= airspy
#CONFIG		+= airspy-exp
#CONFIG		+= tcp-streamer		# use for remote listening
#CONFIG		+= rtp-streamer		# remote using rtp (very immature)
CONFIG		+= gui_3
DEFINES		+= MOT_BASICS__		# use at your own risk
DEFINES		+= MSC_DATA__		# use at your own risk
DESTDIR		= ./linux-bin
INCLUDEPATH	+= /usr/local/include
LIBS		+= -lfftw3f  -lusb-1.0 -ldl  #
LIBS		+= -lportaudio
LIBS		+= -lsndfile
LIBS		+= -lfaad
}
#
# an attempt to have it run under W32
win32 {
DESTDIR	= ../../windows-bin-dab
# includes in mingw differ from the includes in fedora linux
INCLUDEPATH += /usr/i686-w64-mingw32/sys-root/mingw/include
INCLUDEPATH += ../dab-rpi_win_libs/include
LIBS		+= -L/usr/i686-w64-mingw32/sys-root/mingw/lib
LIBS		+= -L../dab-rpi_win_libs/x86
LIBS		+= -lfftw3f-3
LIBS		+= -lportaudio_x86
LIBS		+= -llibsndfile-1
LIBS		+= -lole32
LIBS		+= -lwinpthread
LIBS		+= -lwinmm
LIBS 		+= -lstdc++
LIBS		+= -lws2_32
LIBS		+= -llibfaad
LIBS		+= -lusb-1.0
DEFINES		+= MOT_BASICS__		# use at your own risk
DEFINES		+= MSC_DATA__		# use at your own risk
CONFIG		+= NO_SSE_SUPPORT 
#CONFIG		+= extio
#CONFIG		+= airspy
#CONFIG		+= airspy-exp
CONFIG		+= rtl_tcp
CONFIG		+= dabstick_osmo
#CONFIG		+= dabstick_new
#CONFIG		+= sdrplay
#CONFIG		+= tcp-streamer
#CONFIG		+= rtp-streamer
CONFIG		+= gui_3
}

NO_SSE_SUPPORT {
	SOURCES		+= ./src/backend/spiral-code/spiral-no-sse.c 
} else {
	DEFINES		+= SSE_AVAILABLE
	SOURCES		+= ./src/backend/spiral-code/spiral-sse.c 
}

#######################################
#
#	selecting a GUI
gui_1	{
	DEFINES		+= GUI_1
	INCLUDEPATH	+= ./gui_1
	DEPENDPATH	+= ./gui_1
	FORMS 		+= ./gui_1/gui_1.ui 
	HEADERS		+= ./gui_1/gui.h
	SOURCES		+= ./gui_1/gui.cpp
}
	
gui_2	{
	DEFINES		+= GUI_2
	INCLUDEPATH	+= ./gui_2
	DEPENDPATH	+= ./gui_2
	HEADERS		+= ./gui_2/gui.h
	SOURCES		+= ./gui_2/gui.cpp
}

gui_3	{
        DEFINES		+= GUI_3
        QT		+= qml quick
        INCLUDEPATH	+= ./gui_3
        DEPENDPATH	+= ./gui_3
        HEADERS		+= ./gui_3/gui.h \
                           ./gui_3/stationelement.h \
                           ./gui_3/motimageprovider.h
        SOURCES		+= ./gui_3/gui.cpp \
                           ./gui_3/stationelement.cpp \
                           ./gui_3/motimageprovider.cpp

        RESOURCES += \
            gui_3/touch_gui_resource.qrc
}
	
#	devices
#
#	dabstick
dabstick_osmo {
	DEFINES		+= HAVE_DABSTICK
	INCLUDEPATH	+= /home/jan/rtl-sdr/include
	INCLUDEPATH	+= ./src/input/dabstick-osmo
	HEADERS		+= ./src/input/dabstick-osmo/dabstick.h \
	                   ./src/input/dabstick-osmo/dongleselect.h
	SOURCES		+= ./src/input/dabstick-osmo/dabstick.cpp \
	                   ./src/input/dabstick-osmo/dongleselect.cpp
	FORMS		+= ./src/input/dabstick-osmo/dabstick-widget-osmo.ui
}
#
#	dabstick
dabstick_new {
	DEFINES		+= HAVE_DABSTICK
	INCLUDEPATH	+= /home/jan/rtl-sdr/include
	INCLUDEPATH	+= ./src/input/dabstick-new
	HEADERS		+= ./src/input/dabstick-new/dabstick.h \
	                   ./src/input/dabstick-new/dongleselect.h
	SOURCES		+= ./src/input/dabstick-new/dabstick.cpp \
	                   ./src/input/dabstick-new/dongleselect.cpp
	FORMS		+= ./src/input/dabstick-new/dabstick-widget.ui
}
#
#	the SDRplay
#
sdrplay {
	DEFINES		+= HAVE_SDRPLAY
	INCLUDEPATH	+= ./src/input/sdrplay
	HEADERS		+= ./src/input/sdrplay/sdrplay.h \
	                   ./src/input/sdrplay/sdrplay-loader.h \
	                   ./src/input/sdrplay/sdrplay-worker.h 
	SOURCES		+= ./src/input/sdrplay/sdrplay.cpp \
	                   ./src/input/sdrplay/sdrplay-loader.cpp \
	                   ./src/input/sdrplay/sdrplay-worker.cpp 
	FORMS		+= ./src/input/sdrplay/sdrplay-widget.ui
	DEFINES		+= SDRPLAY_LIBRARY_NEW
}
#
#
# airspy support
#
airspy {
	DEFINES		+= HAVE_AIRSPY
	INCLUDEPATH	+= ./src/input/airspy \
	                    /usr/local/include/libairspy
	HEADERS		+= ./src/input/airspy/airspy-handler.h \
	                    /usr/local/include/libairspy/airspy.h
	SOURCES		+= ./src/input/airspy/airspy-handler.cpp 
	FORMS		+= ./src/input/airspy/airspy-widget.ui
}

# airspy support (still struggling with the sliders)
#
airspy-exp {
	DEFINES		+= HAVE_AIRSPY
	INCLUDEPATH	+= ./src/input/airspy-exp \
	                   /usr/local/include/libairspy
	HEADERS		+= ./src/input/airspy-exp/airspy-handler.h \
	                   /usr/local/include/libairspy/airspy.h
	SOURCES		+= ./src/input/airspy-exp/airspy-handler.cpp 
	FORMS		+= ./src/input/airspy-exp/airspy-widget.ui
}

#
# UHD library (Ettus Research USRP devices) + dependencies
#
uhd {
	DEFINES		+= HAVE_UHD
	INCLUDEPATH	+= ./src/input/uhd
	HEADERS		+= ./src/input/uhd/uhd-input.h
	SOURCES		+= ./src/input/uhd/uhd-input.cpp
	FORMS		+= ./src/input/uhd/uhd-widget.ui
	LIBS		+= -luhd
	LIBS		+= -lboost_system
}

tcp-streamer	{
	DEFINES		+= TCP_STREAMER
	QT		+= network
	HEADERS		+= ./includes/output/tcp-streamer.h
	SOURCES		+= ./src/output/tcp-streamer.cpp
}

rtp-streamer	{
	DEFINES		+= RTP_STREAMER
	QT		+= network
	INCLUDEPATH	+= /usr/local/include/jrtplib3
	HEADERS		+= ./includes/output/rtp-streamer.h
	SOURCES		+= ./src/output/rtp-streamer.cpp
	LIBS		+= -lsamplerate
	LIBS		+= -ljrtp
}

#
#	extio dependencies, windows only
#
extio {
	DEFINES		+= HAVE_EXTIO
	INCLUDEPATH	+= ./src/input/extio-handler
	HEADERS		+= ./src/input/extio-handler/extio-handler.h \
	                   ./src/input/extio-handler/common-readers.h \
	                   ./src/input/extio-handler/virtual-reader.h
	SOURCES		+= ./src/input/extio-handler/extio-handler.cpp \
	                   ./src/input/extio-handler/common-readers.cpp \
	                   ./src/input/extio-handler/virtual-reader.cpp
}

rtl_tcp {
	DEFINES		+= HAVE_RTL_TCP
	QT		+= network
	INCLUDEPATH	+= ./src/input/rtl_tcp
	HEADERS		+= ./src/input/rtl_tcp/rtl_tcp_client.h
	SOURCES		+= ./src/input/rtl_tcp/rtl_tcp_client.cpp
	FORMS		+= ./src/input/rtl_tcp/rtl_tcp-widget.ui
}


##for FreeBSD use the third set (Thanks to Juergen Lock)
#unix {
#DESTDIR	= ../../linux-bin
#	QMAKE_CXXFLAGS += -D__FREEBSD__
#	INCLUDEPATH += ${LOCALBASE}/include/qwt
#	INCLUDEPATH += ${LOCALBASE}/include/portaudio2
#	INCLUDEPATH += ${LOCALBASE}/include/ffmpeg1
#	INCLUDEPATH += ${LOCALBASE}/include
#	INCLUDEPATH += /usr/include/
#	QMAKE_LIBDIR = ${LOCALBASE}/lib/portaudio2
#	QMAKE_LIBDIR += ${LOCALBASE}/lib/ffmpeg${FFMPEG_SUFFIX}
#	QMAKE_LIBDIR += ${LOCALBASE}/lib
#	LIBS+=  -lqwt -lusb -lrt -lportaudio  -lsndfile -lfftw3  -lrtlsdr -lz
#	LIBS += -lfaad
#}

