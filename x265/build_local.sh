mkdir ffmpeg_source
cd ffmpeg_source

git clone --depth 1 git://github.com/mstorsjo/fdk-aac.git
cd fdk-aac/
autoreconf -fiv
./configure --prefix="$HOME/ffmpeg_build" --disable-shared
make
make install
make clean
cd ..

hg clone https://bitbucket.org/multicoreware/x265
cd x265/build/linux/
./make-Makefiles.bash
make
make install
make clean
cd ../../..

wget -O ffmpeg-snapshot.tar.bz2 http://ffmpeg.org/releases/ffmpeg-snapshot.tar.bz2
tar xjvf ffmpeg-snapshot.tar.bz2
cd ffmpeg
./configure --prefix="$HOME/ffmpeg_build" --pkg-config-flags="--static" --extra-cflags="-I$HOME/ffmpeg_build/include" --extra-ldflags="-L$HOME/ffmpeg_build/lib" --extra-libs="-lpthread -lm" --bindir="/usr/bin" --enable-gpl --enable-libfdk-aac --enable-libx264 --enable-libx265 --enable-nonfree
make
make install
make clean

ldconfig
