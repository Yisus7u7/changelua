# made by @Yisus7u7


PREFIX ?= /data/data/com.termux/files/usr/bin
TARGET = changelua.lua


all:

install:
	cp $(TARGET) $(PREFIX)/bin/changelua
 
uninstall:
	rm -rf $(PREFIX)/bin/changelua

.PHONY: all install uninstall
