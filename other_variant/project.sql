CREATE TABLE packages (
  package_id INT PRIMARY KEY,
  package_name VARCHAR(255),
  source VARCHAR(255),
  description VARCHAR(255)
);

CREATE TABLE versions (
  package_id INT,
  version VARCHAR(255),
  release_date DATE,
  PRIMARY KEY (package_id, version),
  FOREIGN KEY (package_id) REFERENCES packages(package_id)
);

CREATE TABLE maintainers (
  package_id INT,
  maintainer VARCHAR(255),
  maintainer_email VARCHAR(255),
  PRIMARY KEY (package_id),
  FOREIGN KEY (package_id) REFERENCES packages(package_id)
);


CREATE TABLE dependencies (
  package_id INT,
  dependencies VARCHAR(255),
  PRIMARY KEY (package_id),
  FOREIGN KEY (package_id) REFERENCES packages(package_id)
);

INSERT INTO dependencies VALUES (1, 'coreutils:kmod:initramfs');
INSERT INTO dependencies VALUES (2, 'linux-firmware-whence');
INSERT INTO dependencies VALUES (3, 'None');
INSERT INTO dependencies VALUES (4, 'None');
INSERT INTO dependencies VALUES (5, 'filesystem:gcc-libs:glibc:bash:coreutils:file:findutils:gawk:grep:procps-ng:sed:tar:gettext:pciutils:psmisc:shadow:util-linux:bzip2:gzip:xz:licenses:pacman:archlinux-keyring:systemd:systemd-sysvcompat:iputils:iproute2');
INSERT INTO dependencies VALUES (6, 'libical:dbus:glib2:alsa-lib:json-c');
INSERT INTO dependencies VALUES (7, 'dbus:systemd:glib2');
INSERT INTO dependencies VALUES (8, 'bash:gdbm:zlib:groff:libpipeline:less:libseccomp');
INSERT INTO dependencies VALUES (9, 'None');
INSERT INTO dependencies VALUES (10, 'glibc:zlib:gnutls:libidn2:libidn2.so=0-64:util-linux-libs:libuuid.so=1-64:libpsl:libpsl.so=5-64:pcre2:nettle:libnettle.so=8-64');
INSERT INTO dependencies VALUES (11, 'vim-runtime=9.0.1046-1:gpm:acl:glibc:libgcrypt:zlib:perl');
INSERT INTO dependencies VALUES (12, 'curl:expat:perl:perl-error:perl-mailtools:openssl:pcre2:grep:shadow:zlib');
INSERT INTO dependencies VALUES (13, 'pcre:libcap:gdbm');
INSERT INTO dependencies VALUES (14, 'libcap:libcap.so=2-64:libnl:ncurses:libncursesw.so=6-64');
INSERT INTO dependencies VALUES (15, 'imlib2:libxext:libxfixes:libxcomposite:libbsd');
INSERT INTO dependencies VALUES (16, 'libgit2:oniguruma');
INSERT INTO dependencies VALUES (17, 'desktop-file-utils:libexif:hicolor-icon-theme:libnotify:pcre2:libgudev:exo:libxfce4util:libxfce4ui:libpng');
INSERT INTO dependencies VALUES (18, 'glibc:krb5:libkrb5.so=3-64:libgssapi_krb5.so=2-64:ldns:libedit:libxcrypt:libcrypt.so=2-64:openssl:pam:libpam.so=0-64:zlib');
INSERT INTO dependencies VALUES (19, 'libxext:python-attrs:python-docopt:python-pillow:python-xlib');
INSERT INTO dependencies VALUES (20, 'hicolor-icon-theme:libconfig:libdbus:libev:libgl:pcre:pixman:xcb-util-image:xcb-util-renderutil');
INSERT INTO dependencies VALUES (21, 'libxinerama:dbus:systemd:wayland:libxss:pango:gdk-pixbuf2:libxrandr:glib2');
INSERT INTO dependencies VALUES (22, 'libepoxy:libxfont2:pixman:xorg-server-common:libunwind:dbus:libgl:xf86-input-libinput:nettle:libpciaccess:libdrm:libxshmfence:libxcvt');
INSERT INTO dependencies VALUES (23, 'libxcb');
INSERT INTO dependencies VALUES (24, 'libx11:xorg-xauth:xorg-xrdb:xorg-xmodmap');
INSERT INTO dependencies VALUES (25, 'libx11');
INSERT INTO dependencies VALUES (26, 'libx11:libxi>=1.5.99.2:xorg-xrandr:libxinerama');
INSERT INTO dependencies VALUES (27, 'pixman:libpng:libxpm:xcb-util:xcb-util-image:libjpeg-turbo:libseccomp:libseccomp.so=2-64:libpixman-1.so=0-64:libjpeg.so=8-64');
INSERT INTO dependencies VALUES (28, 'libxrandr:libx11');
