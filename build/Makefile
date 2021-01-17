BUILDER=rotor

all: buildroot-2015.05 rotor bitcoind

clean:
        find . -maxdepth 1 \
        -not -name 'Makefile' \
        -not -name 'Makefile.rotor' \
        -not -name '.' \
        -exec rm -rf {} \;

buildroot-2015.05:
        tar -xvzf ../deps/buildroot-2015.05.tar.gz
        tar -xvzf ../deps/rotor.tar.gz
        cp rotor_buildroot_dot_config buildroot-2015.05/.config
        mkdir -p buildroot-2015.05/dl
        cp ../deps/binutils-2.24.tar.bz2 \
        ../deps/busybox-1.23.2.tar.bz2 \
        ../deps/expat-2.1.0.tar.gz \
        ../deps/fakeroot_1.18.4.orig.tar.bz2 \
        ../deps/gcc-4.9.2.tar.bz2 \
        ../deps/gdb-7.8.2.tar.xz \
        ../deps/gmp-6.0.0a.tar.xz \
        ../deps/linux-3.18.14.tar.xz \
        ../deps/m4-1.4.17.tar.xz \
        ../deps/mpc-1.0.3.tar.gz \
        ../deps/mpfr-3.1.2.tar.xz \
        ../deps/musl-1.1.8.tar.gz \
        ../deps/ncurses-5.9.tar.gz \
        ../deps/pkgconf-0.8.9.tar.bz2 \
        buildroot-2015.05/dl

        $(MAKE) -C buildroot-2015.05

.PHONY: $(BUILDER)
$(BUILDER):
        $(MAKE) -f Makefile.$(BUILDER)

bitcoind:
        cp ../src/bitcoind .