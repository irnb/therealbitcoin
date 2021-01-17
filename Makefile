# Required Public Keys:
# 0x027A8D7C0FB8A16643720F40721705A8B71EADAF

export ONLINE

all: deps build bin

clean:
        $(MAKE) -C deps clean
        $(MAKE) -C build clean
        $(MAKE) -C bin clean

.PHONY: deps
deps:
        $(MAKE) -C deps

.PHONY: build
build:
        $(MAKE) -C build

.PHONY: bin
bin:
        $(MAKE) -C bin
