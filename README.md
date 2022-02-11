:hammer_and_wrench: Strawberry - Compile with MinGW
===================================================

This guide uses MinGW on Windows to compile Strawberry as well all required libraries.

Compiling all libraries on Windows isn't as hard as it used to be in the past.


### Requirements

* [Git for Windows](https://gitforwindows.org/)
* [MSYS2](https://www.msys2.org/)
* [CMake](https://cmake.org/download/)
* [Meson](https://github.com/mesonbuild/meson/releases/download/0.61.2/meson-0.61.2-64.msi)
* [NASM](https://www.nasm.us/)
* [Strawberry Perl](https://strawberryperl.com/)
* [Python](https://www.python.org/downloads/windows/)
* [NSIS](https://nsis.sourceforge.io/)
* [NSIS LockedList Plugin](https://nsis.sourceforge.io/LockedList_plug-in)
* [7-Zip](https://www.7-zip.org/download.html)
* [pkgconf](http://pkgconf.org/)


### Libraries

* [Boost](https://www.boost.org/)
* [gmp](https://gmplib.org/)
* [libtasn1](https://www.gnu.org/software/libtasn1/)
* [libunistring](https://www.gnu.org/software/libunistring/)
* [pcre](https://www.pcre.org/)
* [zlib](https://zlib.net/)
* [libpng](http://www.libpng.org/)
* [libjpeg](http://libjpeg.sourceforge.net/)
* [GnuTLS](https://www.gnutls.org/)
* [OpenSSL](https://www.openssl.org/)
* [nettle](http://www.lysator.liu.se/~nisse/nettle/)
* [expat](https://libexpat.github.io/)
* [icu4c](https://icu.unicode.org/)
* [bzip2](https://www.sourceware.org/bzip2/)
* [lzo](http://www.oberhumer.com/opensource/lzo/)
* [zstd](https://github.com/facebook/zstd)
* [brotli](https://github.com/google/brotli)
* [pixman](http://www.pixman.org/)
* [libffi](https://sourceware.org/libffi/)
* [freetype](https://freetype.org/)
* [fontconfig](https://www.freedesktop.org/wiki/Software/fontconfig/)
* [cairo](https://www.cairographics.org/)
* [fribidi](http://fribidi.org/)
* [GLib](https://docs.gtk.org/glib/)
* [JsonGlib](https://wiki.gnome.org/Projects/JsonGlib)
* [Harfbuzz](https://harfbuzz.github.io/)
* [glib-networking](https://gitlab.gnome.org/GNOME/glib-networking)
* [orc](https://gstreamer.freedesktop.org/projects/orc.html)
* [libogg](https://xiph.org/ogg/)
* [FLAC](https://xiph.org/flac/)
* [Opus](https://opus-codec.org/)
* [libxml](http://xmlsoft.org/)
* [libpsl](https://github.com/rockdaboot/libpsl)
* [nghttp2](https://nghttp2.org/)
* [libsoup](https://wiki.gnome.org/Projects/libsoup)
* [Qt](https://qt.io/)
* [GStreamer](https://gstreamer.freedesktop.org/)
* [TagLib](https://taglib.org/)
* [Chromaprint](https://acoustid.org/chromaprint)
* [FFTW3](https://www.fftw.org/)
* [SQLite](https://sqlite.org/)
* [Protobuf](https://developers.google.com/protocol-buffers)
* [qtsparkle](https://github.com/davidsansome/qtsparkle)


### Download sources (MinGW Shell)

Open Git Bash

    mkdir -p /c/Data/Projects/strawberry

    cd /c/Data/Projects/strawberry
    git clone https://github.com/jonaski/strawberry

    mkdir -p /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources
    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources

    curl -O -L https://github.com/pkgconf/pkgconf/releases/download/pkgconf-1.0.1/pkgconf-1.0.1.tar.xz
    curl -O -L https://boostorg.jfrog.io/artifactory/main/release/1.78.0/source/boost_1_78_0.zip
	curl -O -L https://gmplib.org/download/gmp/gmp-6.2.1.tar.xz
	curl -O -L https://ftp.gnu.org/gnu/libiconv/libiconv-1.16.tar.gz
	curl -O -L https://ftp.gnu.org/gnu/libtasn1/libtasn1-4.18.0.tar.gz
	curl -O -L https://ftp.gnu.org/gnu/libunistring/libunistring-1.0.tar.gz
    curl -O -L https://www.openssl.org/source/openssl-3.0.1.tar.gz
	curl -O -L https://www.gnupg.org/ftp/gcrypt/gnutls/v3.6/gnutls-3.6.16.tar.xz
	curl -O -L https://ftp.gnu.org/gnu/nettle/nettle-3.7.3.tar.gz
	curl -O -L https://downloads.sourceforge.net/project/pcre/pcre/8.45/pcre-8.45.tar.bz2
	curl -O -L https://downloads.sourceforge.net/project/pcre/pcre2/10.37/pcre2-10.37.tar.bz2
	curl -O -L https://github.com/libffi/libffi/releases/download/v3.4.2/libffi-3.4.2.tar.gz
	curl -O -L https://downloads.sourceforge.net/project/libpng/zlib/1.2.11/zlib-1.2.11.tar.xz
	curl -O -L https://downloads.sourceforge.net/project/libpng/libpng16/1.6.37/libpng-1.6.37.tar.xz
    curl -O -L https://www.ijg.org/files/jpegsrc.v9e.tar.gz
	curl -O -L https://downloads.sourceforge.net/project/expat/expat/2.4.4/expat-2.4.4.tar.bz2
	curl -O -L https://github.com/unicode-org/icu/releases/download/release-70-1/icu4c-70_1-src.tgz
	curl -O -L https://ftp.osuosl.org/pub/clfs/conglomeration/bzip2/bzip2-1.0.6.tar.gz
	curl -O -L https://www.oberhumer.com/opensource/lzo/download/lzo-2.10.tar.gz
	curl -O -L https://github.com/facebook/zstd/releases/download/v1.5.2/zstd-1.5.2.tar.gz
	curl -O -L https://github.com/google/brotli/archive/refs/tags/v1.0.9.tar.gz
	curl -O -L https://www.cairographics.org/releases/pixman-0.40.0.tar.gz¨
	curl -O -L https://downloads.sourceforge.net/project/freetype/freetype2/2.11.1/freetype-2.11.1.tar.xz
	curl -O -L https://www.freedesktop.org/software/fontconfig/release/fontconfig-2.13.1.tar.gz
	curl -O -L https://cairographics.org/releases/cairo-1.16.0.tar.xz
	curl -O -L https://ftp.gnu.org/gnu/gettext/gettext-0.21.tar.xz
	curl -O -L https://github.com/fribidi/fribidi/releases/download/v1.0.11/fribidi-1.0.11.tar.xz
	curl -O -L https://download.gnome.org/sources/glib/2.71/glib-2.71.2.tar.xz
	curl -O -L https://download.gnome.org/sources/json-glib/1.6/json-glib-1.6.6.tar.xz
	curl -O -L https://download.gnome.org/sources/glib-networking/2.70/glib-networking-2.70.1.tar.xz
	curl -O -L https://github.com/harfbuzz/harfbuzz/releases/download/3.4.0/harfbuzz-3.4.0.tar.xz
	curl -O -L https://gstreamer.freedesktop.org/src/orc/orc-0.4.32.tar.xz
	curl -O -L http://xmlsoft.org/sources/libxml2-2.9.12.tar.gz
	curl -O -L https://gnupg.org/ftp/gcrypt/libgpg-error/libgpg-error-1.44.tar.bz2
	curl -O -L https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.10.0.tar.bz2
	curl -O -L https://github.com/rockdaboot/libpsl/releases/download/0.21.1/libpsl-0.21.1.tar.gz
	curl -O -L https://github.com/nghttp2/nghttp2/releases/download/v1.46.0/nghttp2-1.46.0.tar.bz2
	curl -O -L https://ftp.osuosl.org/pub/xiph/releases/ogg/libogg-1.3.5.tar.xz
	curl -O -L https://archive.mozilla.org/pub/opus/opus-1.3.1.tar.gz
	curl -O -L https://ftp.osuosl.org/pub/xiph/releases/flac/flac-1.3.3.tar.xz
	curl -O -L https://ftp.osuosl.org/pub/xiph/releases/vorbis/libvorbis-1.3.7.tar.xz
	curl -O -L https://ftp.osuosl.org/pub/xiph/releases/speex/speex-1.2.0.tar.gz
	curl -O -L https://www.wavpack.com/wavpack-5.4.0.tar.xz
	curl -O -L https://downloads.sourceforge.net/project/lame/lame/3.100/lame-3.100.tar.gz
	curl -O -L https://download.gnome.org/sources/libsoup/3.0/libsoup-3.0.4.tar.xz
	curl -O -L https://downloads.sourceforge.net/project/faac/faad2-src/faad2-2.8.0/faad2-2.8.8.tar.gz
	curl -O -L https://downloads.sourceforge.net/project/faac/faac-src/faac-1.30/faac-1_30.tar.gz
	curl -O -L https://files.musepack.net/source/libmpcdec-1.2.6.tar.bz2
	curl -O -L https://www.nasm.us/pub/nasm/releasebuilds/2.15.05/nasm-2.15.05.tar.xz
	curl -O -L https://github.com/westes/flex/releases/download/v2.6.4/flex-2.6.4.tar.gz
	curl -O -L https://ffmpeg.org/releases/ffmpeg-5.0.tar.xz
	curl -O -L http://files.portaudio.com/archives/pa_stable_v190700_20210406.tgz
	curl -O -L https://lib.openmpt.org/files/libopenmpt/src/libopenmpt-0.6.1+release.autotools.tar.gz
	curl -O -L https://ftp.gnu.org/gnu/libcdio/libcdio-2.1.0.tar.bz2
	curl -O -L https://gstreamer.freedesktop.org/src/gstreamer/gstreamer-1.20.0.tar.xz
	curl -O -L https://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-1.20.0.tar.xz
	curl -O -L https://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-1.20.0.tar.xz
	curl -O -L https://gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-1.20.0.tar.xz
	curl -O -L https://gstreamer.freedesktop.org/src/gst-plugins-ugly/gst-plugins-ugly-1.20.0.tar.xz
	curl -O -L https://gstreamer.freedesktop.org/src/gst-libav/gst-libav-1.20.0.tar.xz
	curl -O -L https://sqlite.org/2022/sqlite-autoconf-3370200.tar.gz
	curl -O -L https://taglib.org/releases/taglib-1.12.tar.gz
	curl -O -L https://github.com/acoustid/chromaprint/releases/download/v1.5.1/chromaprint-1.5.1.tar.gz
	curl -O -L http://www.fftw.org/fftw-3.3.10.tar.gz
	curl -O -L https://download.qt.io/official_releases/qt/6.2/6.2.3/submodules/qtbase-everywhere-src-6.2.3.tar.xz
	curl -O -L https://download.qt.io/official_releases/qt/6.2/6.2.3/submodules/qttools-everywhere-src-6.2.3.tar.xz
	curl -O -L https://github.com/protocolbuffers/protobuf/releases/download/v3.19.4/protobuf-cpp-3.19.4.zip
	git clone https://github.com/dlfcn-win32/dlfcn-win32.git
    git clone https://github.com/davidsansome/qtsparkle


### Extract sources (MinGW Shell)

Open Git Bash

    tar -xvf pkgconf-1.0.1.tar.xz
	unzip boost_1_78_0.zip
	tar -xvf gmp-6.2.1.tar.xz
	tar -xvf libiconv-1.16.tar.gz
	tar -xvf libtasn1-4.18.0.tar.gz
	tar -xvf libunistring-1.0.tar.gz
    tar -xvf openssl-3.0.1.tar.gz
	tar -xvf gnutls-3.6.16.tar.xz
	tar -xvf nettle-3.7.3.tar.gz
	tar -xvf pcre-8.45.tar.bz2
	tar -xvf pcre2-10.37.tar.bz2
	tar -xvf libffi-3.4.2.tar.gz
	tar -xvf zlib-1.2.11.tar.xz
	tar -xvf libpng-1.6.37.tar.xz
	tar -xvf jpegsrc.v9e.tar.gz
	tar -xvf expat-2.4.4.tar.bz2
	tar -xvf icu4c-70_1-src.tgz
	tar -xvf bzip2-1.0.6.tar.gz
	tar -xvf lzo-2.10.tar.gz
	tar -xvf zstd-1.5.2.tar.gz
	tar -xvf v1.0.9.tar.gz
	tar -xvf pixman-0.40.0.tar.gz
    tar -xvf freetype-2.11.1.tar.xz
	tar -xvf fontconfig-2.13.1.tar.gz
	tar -xvf cairo-1.16.0.tar.xz
	tar -xvf gettext-0.21.tar.xz
	tar -xvf fribidi-1.0.11.tar.xz
	tar -xvf glib-2.71.2.tar.xz
	tar -xvf json-glib-1.6.6.tar.xz
	tar -xvf glib-networking-2.70.1.tar.xz
	tar -xvf harfbuzz-3.4.0.tar.xz
	tar -xvf orc-0.4.32.tar.xz
	tar -xvf libxml2-2.9.12.tar.gz
	tar -xvf libgpg-error-1.44.tar.bz2
	tar -xvf libgcrypt-1.10.0.tar.bz2
	tar -xvf libpsl-0.21.1.tar.gz
	tar -xvf nghttp2-1.46.0.tar.bz2
	tar -xvf libogg-1.3.5.tar.xz
	tar -xvf flac-1.3.3.tar.xz
	tar -xvf opus-1.3.1.tar.gz
	tar -xvf libvorbis-1.3.7.tar.xz
	tar -xvf speex-1.2.0.tar.gz
	tar -xvf wavpack-5.4.0.tar.xz
	tar -xvf lame-3.100.tar.gz
	tar -xvf faad2-2.8.8.tar.gz
	tar -xvf faac-1_30.tar.gz
	tar -xvf libmpcdec-1.2.6.tar.bz2
	tar -xvf libsoup-3.0.4.tar.xz
	tar -xvf nasm-2.15.05.tar.xz
	tar -xvf flex-2.6.4.tar.gz
	tar -xvf ffmpeg-5.0.tar.xz
	tar -xvf pa_stable_v190700_20210406.tgz
	tar -xvf libopenmpt-0.6.1+release.autotools.tar.gz
	tar -xvf libcdio-2.1.0.tar.bz
	tar -xvf gstreamer-1.20.0.tar.xz
	tar -xvf gst-plugins-base-1.20.0.tar.xz
	tar -xvf gst-plugins-good-1.20.0.tar.xz
	tar -xvf gst-plugins-bad-1.20.0.tar.xz
	tar -xvf gst-plugins-ugly-1.20.0.tar.xz
	tar -xvf gst-libav-1.20.0.tar.xz
	tar -xvf sqlite-autoconf-3370200.tar.gz
	tar -xvf taglib-1.12.tar.gz
	tar -xvf chromaprint-1.5.1.tar.gz
	tar -xvf fftw-3.3.10.tar.gz
	tar -xvf qtbase-everywhere-src-6.2.3.tar.xz
	tar -xvf qttools-everywhere-src-6.2.3.tar.xz
	unzip protobuf-cpp-3.19.4.zip


### Download binaries (MinGW Shell)

    mkdir -p /c/Data/Projects/strawberry/strawberry-dependencies/mingw/binaries
    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/binaries

    curl -O -L https://github.com/msys2/msys2-installer/releases/download/2022-01-28/msys2-x86_64-20220128.exe
	curl -O -L https://download.qt.io/online/qtsdkrepository/windows_x86/desktop/tools_mingw90/qt.tools.win64_mingw900/9.0.0-1-202111221309mingw-w64-x86_64-11.2.0-release-posix-seh-rt_v9-rev1.7z
	curl -O -L https://github.com/Kitware/CMake/releases/download/v3.23.0-rc1/cmake-3.23.0-rc1-windows-x86_64.msi
	curl -O -L https://www.nasm.us/pub/nasm/releasebuilds/2.15.05/win64/nasm-2.15.05-installer-x64.exe
	curl -O -L https://github.com/mesonbuild/meson/releases/download/0.61.2/meson-0.61.2-64.msi
	curl -O -L https://strawberryperl.com/download/5.32.1.1/strawberry-perl-5.32.1.1-64bit.msi
	curl -O -L https://www.python.org/ftp/python/3.10.2/python-3.10.2-amd64.exe
    curl -O -L https://d13lb3tujbc8s0.cloudfront.net/onlineinstallers/qt-unified-windows-x86-4.2.0-online.exe
	curl -O -L https://fftw.org/pub/fftw/fftw-3.3.5-dll64.zip
	curl -O -L https://gstreamer.freedesktop.org/data/pkg/windows/1.20.0/mingw/gstreamer-1.0-mingw-x86_64-1.20.0.msi
	curl -O -L https://gstreamer.freedesktop.org/data/pkg/windows/1.20.0/mingw/gstreamer-1.0-devel-mingw-x86_64-1.20.0.msi
	curl -O -L https://github.com/lexxmark/winflexbison/releases/download/v2.5.25/win_flex_bison-2.5.25.zip


### MSYS2

    pacman -S diffutils patch m4 make meson libtool


### Extract MinGW64

    C:
	CD \
	cd C:\Data\Projects\strawberry\strawberry-dependencies\mingw\binaries
	7z x qt.tools.win64_mingw900/9.0.0-1-202111221309mingw-w64-x86_64-11.2.0-release-posix-seh-rt_v9-rev1.7z
	move tools\*.* c:\


### Prepare build environment


For Command prompt:

	SET PATH=c:\mingw900_64\bin;c:\mingw64\bin;%PATH%;C:\Program Files\7-Zip;C:\Data\win_flex_bison
	SET PKG_CONFIG_PATH=c:\mingw64\lib\pkgconfig

    MKDIR c:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources


For MSYS64:

    export PATH=/c/mingw900_64/bin:/c/mingw64/bin:$PATH
	export PKG_CONFIG_PATH=/c/mingw64/lib/pkgconfig


### Compile pkgconfig (Use: MSYS64)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/pkgconf-1.0.1
	./configure --prefix=/c/MinGW64
    make -j$(nproc)
	make install
	cp /c/MinGW64/bin/pkgconf /c/MinGW64/bin/pkg-config


### Install boost (Use: MinGW Shell)

    cp -r /c/data/projects/strawberry/strawberry-dependencies/mingw/sources/boost_1_78_0/boost /c/mingw64/include/


### Compile gmp (Use: MSYS64)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/gmp-6.2.1
	./configure --prefix=/c/MinGW64 --disable-static --enable-shared
    make -j$(nproc)
	make install


### Compile libiconv (Use: MSYS64)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/libiconv-1.16
	./configure --prefix=/c/MinGW64 --enable-shared --disable-rpath --disable-nls
    make -j$(nproc)
	make install


### Compile openssl (Use: MSYS64)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/openssl-3.0.1/
    ./Configure mingw64 --prefix=/c/MinGW64 --libdir=lib
    make -j$(nproc)
    make install


### Compile libtasn1 (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/libtasn1-4.18.0
	./configure --prefix=/c/MinGW64
    make -j$(nproc)
	make install


### Compile nettle (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/nettle-3.7.3
	CFLAGS="-I/c/mingw64/include" LDFLAGS="-L/c/mingw64/lib" ./configure --prefix=/c/MinGW64 --disable-static --enable-shared
    make -j$(nproc) CFLAGS="-I/c/mingw64/include" LDFLAGS="-L/c/mingw64/lib"
	make install


### Compile libunistring (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/libunistring-1.0
	./configure --prefix=/c/MinGW64
    make -j$(nproc)
	make install


### Compile gnutls (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/gnutls-3.6.16
	CFLAGS="-I/c/mingw64/include" LDFLAGS="-L/c/mingw64/lib" ./configure --prefix=/c/MinGW64 --disable-rpath --disable-nls --disable-guile --disable-doc --disable-tests -disable-silent-rules --without-p11-kit --enable-local-libopts
    make -j$(nproc)
	make install


### Compile pcre (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/pcre-8.45
	./configure --prefix=/c/MinGW64
    make -j$(nproc)
	make install


### Compile pcre2 (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/pcre2-10.37
	./configure --prefix=/c/MinGW64
    make -j$(nproc)
	make install


### Compile libffi (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/libffi-3.4.2
	./configure --prefix=/c/MinGW64
    make -j$(nproc)
	make install


### Compile zlib (Use: Command prompt)

    cd c:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\zlib-1.2.11
	mkdir build
	cd build
	cmake .. -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=c:\mingw64
	cmake --build . --parallel
	cmake --install .
	copy zlib.pc c:\mingw64\lib\pkgconfig\
	copy C:\mingw64\share\pkgconfig\zlib.pc C:\mingw64\lib\pkgconfig\
	copy C:\mingw64\lib\libzlib.dll.a C:\mingw64\lib\libz.dll.a
	copy C:\mingw64\bin\libzlib.dll C:\mingw64\bin\libz.dll

I had to edit zlib.pc manually and change -lz to -lzlib for glib to link.


### Compile libpng (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/libpng-1.6.37
	./configure --prefix=/c/MinGW64 --disable-static --enable-shared
    make -j$(nproc)
	make install


### Compile jpeg (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/jpeg-9e
	./configure --prefix=/c/MinGW64
    make -j$(nproc)
	make install


### Compile expat (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/expat-2.4.4
	./configure --prefix=/c/MinGW64 --without-docbook
    make -j$(nproc)
	make install


### Compile bzip2 (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/bzip2-1.0.6
    make -j$(nproc)
	gcc bzlib.o compress.o decompress.o crctable.o randtable.o huffman.o blocksort.o -shared -o libbz2.dll -Xlinker --out-implib -Xlinker libbz2.dll.a
	make install PREFIX=/c/mingw64
	cp *.dll /c/mingw64/bin/


### Compile lzo (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/lzo-2.10
	./configure --prefix=/c/MinGW64 --enable-shared
    make -j$(nproc)
	make install


### Compile zstd (Use: Command Prompt)

    cd C:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\zstd-1.5.2\build\cmake
    cmake -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=c:\mingw64
    cmake --build . --parallel
    cmake --install .


### Compile brolti (Use: Command Prompt)

    cd C:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\brotli-1.0.9
    mkdir bin
    cd bin
    cmake .. -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=c:\mingw64
    cmake --build . --parallel
    cmake --install .


### Compile pixman (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/pixman-0.40.0
	./configure --prefix=/c/MinGW64 --enable-shared
    make -j$(nproc)
	make install


### Compile icu4c (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/icu/source
	./configure --prefix=/c/MinGW64 --enable-tests=no --enable-samples=no
    make -j$(nproc)
	make install


### Compile glib (Use: Command prompt)

    SET LIBRARY_PATH=C:\mingw64\lib
    cd c:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\glib-2.71.2
	meson --buildtype=release --prefix=c:\mingw64 --pkg-config-path=c:\mingw64\lib\pkgconfig build
    ninja
	ninja install


### Compile json-glib (Use: Command prompt)

    SET LIBRARY_PATH=C:\mingw64\lib
    cd c:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\json-glib-1.6.6
	meson --buildtype=release --prefix=c:\mingw64 --pkg-config-path=c:\mingw64\lib\pkgconfig build -Dintrospection=disabled -Dgtk_doc=disabled -Dtests=false
	cd build
    ninja
	ninja install


### Compile glib-networking (Use: Command prompt)

    cd c:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\glib-networking-2.70.1
	meson --buildtype=release --prefix=c:\mingw64 --pkg-config-path=c:\mingw64\lib\pkgconfig build
	cd build
    ninja
	ninja install


### Compile harfbuzz (Use: Command Prompt)

	cd c:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\harfbuzz-3.4.0
	meson --buildtype=release --prefix=c:\mingw64 --pkg-config-path=c:\mingw64\lib\pkgconfig build
	cd build
    ninja
	ninja install


### Compile freetype (Use: Command Prompt)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/freetype-2.11.1
	meson --buildtype=release --prefix=c:\mingw64 --pkg-config-path=c:\mingw64\lib\pkgconfig build
	cd build
    ninja
	ninja install


### Compile fontconfig (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/fontconfig-2.13.1
	./configure --prefix=/c/MinGW64 --disable-docs
    make -j$(nproc) bin_PROGRAMS= sbin_PROGRAMS= noinst_PROGRAMS=
	make install bin_PROGRAMS= sbin_PROGRAMS= noinst_PROGRAMS=


### Compile cairo (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/cairo-1.16.0
	./configure --prefix=/c/MinGW64 --enable-win32 --enable-win32-font
    make -j$(nproc) LDFLAGS='-fstack-protector'
	make install


### Compile gettext (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/gettext-0.21/gettext-runtime
	./configure --prefix=/c/MinGW64
	cd intl
    make -j$(nproc)
	make install


### Compile fribidi (Use: Command prompt)

    SET LIBRARY_PATH=C:\mingw64\lib
    cd c:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\fribidi-1.0.11
	meson --buildtype=release --prefix=c:\mingw64 --pkg-config-path=c:\mingw64\lib\pkgconfig -Ddocs=false -Ddeprecated=false build
	cd build
    ninja
	ninja install


### Compile dlfcn-win32 (Use: Command Prompt)

    cd C:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\dlfcn-win32
    mkdir build
    cd build
    cmake .. -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=c:\mingw64
    cmake --build . --parallel
    cmake --install .


### Compile orc (Use: Command prompt)

    cd c:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\orc-0.4.32
	meson --buildtype=release --prefix=c:\mingw64 --pkg-config-path=c:\mingw64\lib\pkgconfig build
	cd build
    ninja
	ninja install


### Compile libxml (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/libxml2-2.9.12
	./configure --prefix=/c/MinGW64 --without-debug --without-python
    make -j$(nproc)
	make install


### Compile libgpg_error (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/libgpg-error-1.44
	./configure --prefix=/c/MinGW64 --enable-shared --disable-doc --disable-tests --disable-rpath --disable-nls --disable-languages
    make -j$(nproc)
	make install


### Compile libgcrypt (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/libgcrypt-1.10.0
	./configure --prefix=/c/MinGW64 --enable-shared --disable-doc
    make -j$(nproc)
	make install


### Compile nghttp2 (Use: Command Prompt)

    cd C:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\nghttp2-1.46.0
    mkdir build
    cd build
    cmake .. -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=c:\mingw64
    cmake --build . --parallel
    cmake --install .


### Compile sqlite3 (Use: Command Prompt)

    cd C:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\sqlite-autoconf-3370200
	./configure --prefix=/c/MinGW64 --disable-readline --enable-threadsafe CFLAGS="-Os -DSQLITE_ENABLE_COLUMN_METADATA"
    make
	make install


### Compile libpsl (Use: Command prompt)

    SET CFLAGS=-Ic:\mingw64\include
    cd c:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\libpsl-0.21.1
	meson --buildtype=release --prefix=c:\mingw64 --pkg-config-path=c:\mingw64\lib\pkgconfig build
    ninja
	ninja install
	SET CFLAGS=


### Compile libsoup (Use: Command prompt)

    cd c:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\libsoup-3.0.4
	meson --buildtype=release --prefix=c:\mingw64 --pkg-config-path=c:\mingw64\lib\pkgconfig -Dtests=false build
    ninja
	ninja install


### Compile libogg (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/libogg-1.3.5
	./configure --prefix=/c/MinGW64
    make -j$(nproc)
	make install


### Compile flac (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/flac-1.3.3
	./configure --prefix=/c/MinGW64 --disable-rpath --disable-doxygen-docs --disable-xmms-plugin --disable-oggtest --enable-cpplibs --enable-ogg
    make -j$(nproc) LDFLAGS='-fstack-protector'
	make install


### Compile opus (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/opus-1.3.1
	./configure --prefix=/c/MinGW64
    make -j$(nproc) LDFLAGS='-fstack-protector'
	make install


### Compile libvorbis (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/libvorbis-1.3.7
	./configure --prefix=/c/MinGW64
    make -j$(nproc)
	make install


### Compile speex (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/speex-1.2.0
	./configure --prefix=/c/MinGW64
    make -j$(nproc)
	make install


### Compile wavpack (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/wavpack-5.4.0
	./configure --prefix=/c/MinGW64 --without-iconv
    make -j$(nproc)
	make install


### Compile lame (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/lame-3.100
	curl -O -L https://raw.githubusercontent.com/strawberrymusicplayer/strawberry-mxe/master/src/lame-1-fixes.patch
	patch -p1 < lame-1-fixes.patch
	./configure --prefix=/c/MinGW64 --disable-frontend --disable-gtktest
    make -j $(nproc)
	make install


### Compile faad2 (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/faad2-2.8.8
	curl -O -L https://raw.githubusercontent.com/strawberrymusicplayer/strawberry-mxe/master/src/faad2-1-fixes.patch
	patch -p1 < faad2-1-fixes.patch
	./configure --prefix=/c/MinGW64
    make -j $(nproc)
	make install


### Compile faac (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/faac-1_30
	./bootstrap
	./configure --prefix=/c/MinGW64
    make -j $(nproc)
	make install


### Compile libmpcdec (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/libmpcdec-1.2.6
	./configure --prefix=/c/MinGW64
    make -j $(nproc)
	make install


### Compile TagLib (Use: Command Prompt)

    cd C:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\taglib-1.12
    mkdir build
    cd build
    cmake .. -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=c:\mingw64 -DBUILD_SHARED_LIBS=ON
    cmake --build . --parallel
    cmake --install .


### Compile nasm (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/nasm-2.15.05
	./configure --prefix=/c/MinGW64
    make -j $(nproc)
	make install


### Compile ffmpeg (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/ffmpeg-5.0
	./configure --prefix=/c/MinGW64 --target-os=mingw32 --disable-static --enable-shared --extra-libs='-mconsole' --disable-debug --disable-doc --enable-gpl --enable-version3 --enable-gnutls --enable-libvorbis --enable-libopus --enable-libspeex --enable-libmp3lame
    make -j $(nproc)
	make install


### Compile portaudio (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/portaudio
	./configure --prefix=/c/MinGW64 --enable-shared --with-host_os=mingw --with-winapi=wmme,directx,wdmks,wasapi
    make -j $(nproc)
	make install


### Compile chromaprint (Use: Command Prompt)

    cd C:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\chromaprint-1.5.1
    mkdir build
    cd build
    cmake .. -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=ON -DFFMPEG_ROOT=C:\mingw64 -DCMAKE_INSTALL_PREFIX=C:\mingw64 -DBUILD_TESTS=OFF
    cmake --build . --parallel
	cmake --install .


### Compile libopenmpt (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/libopenmpt-0.6.1+release.autotools
	./configure --prefix=/c/MinGW64 --enable-shared --disable-doxygen-doc --disable-doxygen-html --disable-examples --disable-tests --disable-openmpt123 --without-mpg123
    make -j $(nproc)
	make install


### Compile libcdio (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/libcdio-2.1.0
	./configure --prefix=/c/MinGW64 --enable-shared --disable-rpath --without-cd-drive --without-cd-info --without-cd-read --without-cdda-player --without-iso-info --without-iso-read --enable-rock
    make -j $(nproc)
	make install


### Compile gstreamer (Use: Command prompt)

    cd c:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\gstreamer-1.20.0
	meson --buildtype=release --prefix=c:\mingw64 --pkg-config-path=c:\mingw64\lib\pkgconfig -Dtests=disabled -Dtools=enabled build
	cd build
    ninja
	ninja install


### Compile gst-plugins-base (Use: Command prompt)

    cd c:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\gst-plugins-base-1.20.0
	meson --buildtype=release --prefix=c:\mingw64 --pkg-config-path=c:\mingw64\lib\pkgconfig -Dtests=disabled -Dtools=enabled -Dvideoconvert=disabled -Dvideorate=disabled -Dvideoscale=disabled -Dvideotestsrc=disabled build
	cd build
    ninja
	ninja install


### Compile gst-plugins-good (Use: Command prompt)

    cd c:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\gst-plugins-good-1.20.0
	meson --buildtype=release --prefix=c:\mingw64 --pkg-config-path=c:\mingw64\lib\pkgconfig -Dtests=disabled -Dexamples=disabled build
	cd build
    ninja
	ninja install


### Compile gst-plugins-bad (Use: Command prompt)

    cd c:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\gst-plugins-bad-1.20.0
	meson --buildtype=release --prefix=c:\mingw64 --pkg-config-path=c:\mingw64\lib\pkgconfig -Dtests=disabled -Dexamples=disabled build
	cd build
    ninja
	ninja install


### Compile gst-plugins-ugly (Use: Command prompt)

    cd c:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\gst-plugins-ugly-1.20.0
	meson --buildtype=release --prefix=c:\mingw64 --pkg-config-path=c:\mingw64\lib\pkgconfig -Dgpl=enabled -Dorc=enabled -Dtests=disabled -Dcdio=enabled build
	cd build
    ninja
	ninja install


### Compile gst-libav (Use: Command prompt)

    cd c:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\gst-libav-1.20.0
	meson --buildtype=release --prefix=c:\mingw64 --pkg-config-path=c:\mingw64\lib\pkgconfig -Ddoc=disabled -Dtests=disabled build
	cd build
    ninja
	ninja install


### Install fftw3 (Use: MSYS2)

    cd /c/Data/Projects/strawberry/strawberry-dependencies/mingw/sources/fftw-3
	./configure --prefix=/c/MinGW64 --enable-threads --with-combined-threads --disable-doc
    make -j $(nproc)
	make install


### Compile protobuf (Use: Command Prompt)

    cd C:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\protobuf-3.19.4\cmake
	mkdir build
	cd build
	cmake .. -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release -Dprotobuf_BUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=c:\MinGW64 -Dprotobuf_BUILD_TESTS=OFF
	cmake --build . --parallel
	cmake --install .


### Compile Qt 6 Base (Use: Command Prompt)

    cd C:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\qtbase-everywhere-src-6.2.3
	mkdir build
	cd build
    cmake -G "Ninja" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=C:/mingw64/qt6 -DFEATURE_rpath=OFF -DFEATURE_pkg_config=ON -DFEATURE_accessibility=ON -DFEATURE_fontconfig=OFF -DFEATURE_harfbuzz=ON -DFEATURE_pcre2=ON -DFEATURE_openssl=ON -DFEATURE_openssl_linked=ON -DFEATURE_opengl=ON -DFEATURE_opengl_dynamic=ON -DFEATURE_use_gold_linker_alias=OFF -DFEATURE_glib=ON -DFEATURE_icu=OFF -DFEATURE_directfb=OFF -DFEATURE_dbus=OFF -DFEATURE_sql=ON -DFEATURE_sql_sqlite=ON -DFEATURE_sql_odbc=OFF -DFEATURE_jpeg=ON -DFEATURE_png=ON -DFEATURE_gif=ON -DFEATURE_style_windows=ON -DFEATURE_style_windowsvista=ON -DFEATURE_system_zlib=ON -DFEATURE_system_png=ON -DFEATURE_system_jpeg=ON -DFEATURE_system_pcre2=ON -DFEATURE_system_harfbuzz=OFF -DFEATURE_system_sqlite=ON ..
	cmake --build . --parallel
	cmake --install .


### Compile Qt 6 Tools (Use: Command Prompt)

    cd C:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\qttools-everywhere-src-6.2.3
	mkdir build
	cd build
    c:\MinGW64\qt6\bin\qt-configure-module ..
	cmake --build . --parallel
	cmake --install .


### Update PATH with Qt 6 DIR

	SET PATH=%PATH%;c:\mingw64\qt6\bin


### Compile qtsparkle (Use: Command Prompt)

    cd C:\Data\Projects\strawberry\strawberry-dependencies\mingw\sources\qtsparkle
    mkdir build
    cd build
    cmake .. -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release -DBUILD_WITH_QT6=ON -DBUILD_SHARED_LIBS=OFF -DCMAKE_PREFIX_PATH=C:/MinGW64/qt6/lib/cmake -DCMAKE_INSTALL_PREFIX=c:\mingw64
	cmake --build .
	cmake --install .
    cmake .. -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release -DBUILD_WITH_QT6=ON -DBUILD_SHARED_LIBS=ON -DCMAKE_PREFIX_PATH=C:/MinGW64/qt6/lib/cmake -DCMAKE_INSTALL_PREFIX=c:/mingw64
	cmake --build .
	cmake --install .


### Compile strawberry (Use: Command Prompt)

	MDDIR C:\Data\Projects\strawberry\build
	CD C:\Data\Projects\strawberry\build
    cmake .. -G "Ninja" -DCMAKE_BUILD_TYPE=Release -DBUILD_WITH_QT6=ON -DCMAKE_PREFIX_PATH=C:/MinGW64/qt6/lib/cmake -DARCH=x86_64
	cmake --build . --parallel


### Copy dependencies (MinGW Shell)

First run the batch file in C:\Data\Projects\strawberry\strawberry\dist\scripts to copy plugins over to the build directory.

    cd /c/Data/Projects/strawberry/strawberry/build
	curl -O -L https://raw.githubusercontent.com/strawberrymusicplayer/strawberry-mxe/master/tools/copydlldeps.sh
	./copydlldeps.sh -c -d . -F . -F ./platforms -F ./styles -F ./tls -F ./sqldrivers -F ./imageformats -F ./gio-modules -F ./gstreamer-plugins -R /c/mingw900_64/bin -R /c/mingw64/bin -R /c/mingw64/qt6/bin

To create the NSIS installer open MakeNSIS and drag strawberry.nsi over in the MakeNSIS window.
