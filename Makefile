# SPDX-License-Identifier: Zlib
#
# Copyright (c) 2023 Antonio Niño Díaz

MAXMOD_MAJOR	:= 1
MAXMOD_MINOR	:= 0
MAXMOD_PATCH	:= 12

VERSION		:= $(MAXMOD_MAJOR).$(MAXMOD_MINOR).$(MAXMOD_PATCH)

MAKE		:= make

.PHONY: all clean ds7 ds9 ds9e gba

all: gba ds7 ds9 ds9e

clean:
	@echo "  CLEAN"
	@rm -rf lib build

ds: ds7 ds9

gba:
	@+$(MAKE) SYSTEM=GBA -f Makefile.plat --no-print-directory

ds7:
	@+$(MAKE) SYSTEM=DS7 -f Makefile.plat --no-print-directory

ds9:
	@+$(MAKE) SYSTEM=DS9 -f Makefile.plat --no-print-directory

ds9e:
	@+$(MAKE) SYSTEM=DS9E -f Makefile.plat --no-print-directory
