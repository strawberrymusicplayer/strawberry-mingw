SET LIB_DIR="C:\mingw64\lib"
SET BIN_DIR="C:\mingw64\bin"
SET QT_DIR="C:\mingw64\qt6"
SET SOURCE_DIR="C:\Data\Projects\strawberry\strawberry"
SET BUILD_DIR="C:\Data\Projects\strawberry\strawberry\build"

MKDIR "%BUILD_DIR%\platforms"
MKDIR "%BUILD_DIR%\tls"
MKDIR "%BUILD_DIR%\styles"
MKDIR "%BUILD_DIR%\sqldrivers"
MKDIR "%BUILD_DIR%\imageformats"
MKDIR "%BUILD_DIR%\gio-modules"
MKDIR "%BUILD_DIR%\gstreamer-plugins"

COPY "%SOURCE_DIR%\COPYING" "%BUILD_DIR%\"
COPY %SOURCE_DIR%\dist\windows\*.nsh "%BUILD_DIR%\"
COPY %SOURCE_DIR%\dist\windows\*.nsi "%BUILD_DIR%\"
COPY %SOURCE_DIR%\dist\windows\*.ico "%BUILD_DIR%\"

COPY "%BIN_DIR%\libcrypto-3-x64.dll" "%BUILD_DIR%\"
COPY "%BIN_DIR%\libssl-3-x64.dll" "%BUILD_DIR%\"

COPY "%BIN_DIR%\libsoup-3.0-0.dll" "%BUILD_DIR%\"
COPY "%BIN_DIR%\gst-launch-1.0.exe" "%BUILD_DIR%\"
COPY "%BIN_DIR%\gst-discoverer-1.0.exe" "%BUILD_DIR%\"

COPY "%QT_DIR%\plugins\platforms\qwindows.dll" "%BUILD_DIR%\platforms\"
COPY "%QT_DIR%\plugins\tls\qopensslbackend.dll" "%BUILD_DIR%\tls\"
COPY "%QT_DIR%\plugins\styles\qwindowsvistastyle.dll" "%BUILD_DIR%\styles\"
COPY "%QT_DIR%\plugins\sqldrivers\qsqlite.dll" "%BUILD_DIR%\sqldrivers\"
COPY "%QT_DIR%\plugins\imageformats\qjpeg.dll" "%BUILD_DIR%\imageformats\"
COPY "%QT_DIR%\plugins\imageformats\qgif.dll" "%BUILD_DIR%\imageformats\"
COPY "%QT_DIR%\plugins\imageformats\qico.dll" "%BUILD_DIR%\imageformats\"

COPY "%LIB_DIR%\gio\modules\libgiognutls.dll" "%BUILD_DIR%\gio-modules\"

copy "%LIB_DIR%\gstreamer-1.0\libgstapp.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstcoreelements.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstaudioconvert.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstaudiofx.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstaudiomixer.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstaudioparsers.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstaudiorate.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstaudioresample.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstaudiotestsrc.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstautodetect.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstplayback.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstvolume.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstspectrum.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstequalizer.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstreplaygain.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgsttypefindfunctions.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstgio.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstdirectsound.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstwasapi.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstwasapi2.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstapetag.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgsticydemux.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstid3demux.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgsttcp.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstudp.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstsoup.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstrtp.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstrtsp.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstflac.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstwavparse.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstwavpack.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstogg.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstvorbis.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstopus.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstopusparse.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstspeex.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstlame.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstaiff.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstisomp4.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstasf.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstasfmux.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstlibav.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstdash.dll" "%BUILD_DIR%\gstreamer-plugins\"
copy "%LIB_DIR%\gstreamer-1.0\libgstxingmux.dll" "%BUILD_DIR%\gstreamer-plugins\"

PAUSE