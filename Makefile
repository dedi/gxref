#
# Simple Makefile to automate extracting Readme markdown from gxref.el header.
#

README_FILE = README.md

$(README_FILE): gxref.el
	./el2md.pl < $< > $@

