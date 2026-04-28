destdir := env('DESTDIR')

# Install the artwork
install:
    @install -v -d -D -m 00755 {{destdir}}/usr/share/wallpapers/aerynos
    @install -v -D -d -m 00755 {{destdir}}/usr/share/gnome-background-properties/

    @install -v -m 00644 *.xml {{destdir}}/usr/share/gnome-background-properties/.
    @install -v -m 00644 *.jpg {{destdir}}/usr/share/wallpapers/aerynos/.
    @install -v -m 00644 *.png {{destdir}}/usr/share/wallpapers/aerynos/.
    @ln -srvf {{destdir}}/usr/share/wallpapers {{destdir}}/usr/share/backgrounds
