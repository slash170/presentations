SHELL := /bin/bash

PANDOC_OPT := -s -t revealjs --self-contained --slide-level=2 -V revealjs-url=../reveal.js

.PHONY: all
all: \
	demo/demo.html

demo/demo.html: demo/demo.md
	cd demo; pandoc $(notdir $<) -o $(notdir $@) $(PANDOC_OPT)
