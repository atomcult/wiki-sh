.POSIX:
.PHONY: install uninstall clean

PROG = wiki

PREFIX ?= /usr/local
TARGET ?= $(PROG)

.SUFFIXES: .scd
.scd:
	@printf 'SCDOC\t%s\n' '$@'
	@scdoc < '$<' > '$@'

install:   install-bin   install-docs
uninstall: uninstall-bin uninstall-docs

clean:
	rm -f docs/*.1

install-bin:
	@printf 'INSTALL\t%s\n' '$(PREFIX)/bin/$(TARGET)'
	@mkdir -p $(PREFIX)/bin
	@cp $(PROG) $(PREFIX)/bin/$(TARGET)
	@chmod 0755 $(PREFIX)/bin/$(TARGET)

uninstall-bin:
	rm $(PREFIX)/bin/$(TARGET)

docs: docs/wiki.1

install-docs: docs
	@printf 'INSTALL\t%s\n' '$(PREFIX)/share/man/man1/$(TARGET).1'
	@mkdir -p $(PREFIX)/share/man/man1
	@cp docs/wiki.1 $(PREFIX)/share/man/man1/$(TARGET).1
	@chmod 0644 $(PREFIX)/share/man/man1/$(TARGET).1
	
uninstall-docs:
	rm $(PREFIX)/share/man/man1/$(TARGET).1
	
