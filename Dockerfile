FROM archlinux:latest
RUN pacman -Sy && pacman -S --noconfirm make pkg-config glib2 bison wget fakeroot binutils gtk3 nss alsa-lib xdg-utils libxss libcups ttf-font libpulse pciutils json-glib libva desktop-file-utils hicolor-icon-theme jsoncpp openjpeg2 icu libxml2 fontconfig harfbuzz libjpeg re2 libevent snappy flac libwebp minizip libxslt freetype2 opus python python2 ffmpeg gperf yasm mesa ninja git clang lld gn llvm quilt
RUN groupadd -r compiler && useradd --no-log-init -r -g compiler compiler
RUN mkdir /home/compiler && chmod 777 /home/compiler
USER compiler
RUN cd /home/compiler && wget https://raw.githubusercontent.com/ungoogled-software/ungoogled-chromium-archlinux/master/PKGBUILD && makepkg
