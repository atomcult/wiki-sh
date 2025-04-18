.POSIX:
.PHONY: install uninstall

PROG = wiki

PREFIX ?= /usr/local
TARGET ?= $(PROG)

install:   install-bin   install-docs
uninstall: uninstall-bin uninstall-docs

install-bin:
	mkdir -p $(PREFIX)/bin
	install -T -m755 $(PROG) $(PREFIX)/bin/$(TARGET)

uninstall-bin:
	rm $(PREFIX)/bin/$(TARGET)

# TODO --------------------------------------------
docs:
	@true

install-docs: docs
	@true

uninstall-docs:
	@true
# -------------------------------------------------
	
