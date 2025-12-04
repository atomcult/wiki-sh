.POSIX:
.PHONY: install uninstall clean

PROG = wiki

PREFIX ?= /usr/local
TARGET ?= $(PROG)

DESTDIR ?= $(PREFIX)

.SUFFIXES: .scd
.scd:
	@printf 'SCDOC\t%s\n' '$@'
	@scdoc < '$<' > '$@'

install:   install-bin   install-docs
uninstall: uninstall-bin uninstall-docs

lint:
	@shellcheck $(PROG)

clean:
	rm -f docs/*.1

install-bin:
	@printf 'INSTALL\t%s\n' '$(DESTDIR)/bin/$(TARGET)'
	@mkdir -p $(DESTDIR)/bin
	@cp $(PROG) $(DESTDIR)/bin/$(TARGET)
	@chmod 0755 $(DESTDIR)/bin/$(TARGET)

uninstall-bin:
	rm $(DESTDIR)/bin/$(TARGET)

docs: docs/wiki.1

install-docs: docs
	@printf 'INSTALL\t%s\n' '$(DESTDIR)/share/man/man1/$(TARGET).1'
	@mkdir -p $(DESTDIR)/share/man/man1
	@cp docs/wiki.1 $(DESTDIR)/share/man/man1/$(TARGET).1
	@chmod 0644 $(DESTDIR)/share/man/man1/$(TARGET).1
	
uninstall-docs:
	rm $(DESTDIR)/share/man/man1/$(TARGET).1
	
