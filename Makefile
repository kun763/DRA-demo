SHELL := /bin/bash
DRAFT ?= draft-yourname-yourtopic

MD    := $(DRAFT).md
XML   := build/$(DRAFT).xml
TXT   := build/$(DRAFT).txt
HTML  := build/$(DRAFT).html

XML2RFC ?= xml2rfc

.PHONY: all clean check html txt xml

INDEX := build/index.html

all: html txt index

index: html
	@cp -f $(HTML) $(INDEX)


build:
	@mkdir -p build

xml: build $(MD)
	@if command -v kramdown-rfc2629 >/dev/null 2>&1; then \
		kramdown-rfc2629 $(MD) > $(XML); \
	elif command -v kramdown-rfc >/dev/null 2>&1; then \
		kramdown-rfc $(MD) > $(XML); \
	else \
		echo "ERROR: kramdown-rfc not found. Run: gem install kramdown-rfc"; \
		exit 1; \
	fi

html: xml
	$(XML2RFC) --v3 --html -o $(HTML) $(XML)

txt: xml
	$(XML2RFC) --v3 --text -o $(TXT) $(XML)

check: xml
	$(XML2RFC) --v3 --strict --quiet $(XML) >/dev/null

clean:
	rm -rf build
