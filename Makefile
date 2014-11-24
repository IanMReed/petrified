# petrified - a bash client to update dynamic DNS at freedns.afraid.org

VERSION := $(shell grep '^\#\# Version:' petrified | cut -d' ' -f3)

PREFIX    ?= /usr/local
MANPREFIX ?= $(PREFIX)/share/man
ETCPREFIX ?= /etc

MANPAGES = \
	petrified.1

all: doc

doc: $(MANPAGES)
petrified.1: README.pod
	pod2man -s 1 -c "Petrified Manual" -n "PETRIFIED" \
		-r "petrified $(VERSION)" $< $@

install: all
	install -Dm0755 petrified "$(DESTDIR)$(PREFIX)/bin/petrified"
	install -Dm0644 petrified.1 "$(DESTDIR)$(MANPREFIX)/man1/petrified.1"
	install -Dm0600 petrified.conf "$(DESTDIR)$(ETCPREFIX)/petrified.conf"

uninstall:
	$(RM) "$(DESTDIR)$(PREFIX)/bin/petrified" \
		"$(DESTDIR)$(MANPREFIX)/man1/petrified.1" \
		"$(DESTDIR)$(ETCPREFIX)/petrified.conf"

clean:
	$(RM) $(MANPAGES)

.PHONY: clean doc install uninstall

