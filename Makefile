#
# Simple Makefile to automate extracting Readme markdown from gxref.el header.
#

README_FILE = README.md

$(README_FILE): gxref.el
	./el2md.pl < $< > $@

view_readme: $(README_FILE)
	markdown $< > /tmp/file.html && firefox /tmp/file.html

.PHONY : view_readme
