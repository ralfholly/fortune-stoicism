.PHONY:	all install

FORTUNES_DIR := /usr/share/games/fortunes

all: stoicism.dat
	@fortune stoicism

stoicism.dat:	stoicism
	strfile stoicism

install: stoicism.dat stoicism
	@[ -d $(FORTUNES_DIR) ] || ( echo "Directory $(FORTUNES_DIR) doesn't exist" ; exit 1 )
	@cp $^ $(FORTUNES_DIR) || (echo "Are you root?" ; exit 1 )
