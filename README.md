[![MELPA](https://melpa.org/packages/gxref-badge.svg)](https://melpa.org/#/gxref)

# gxref - GNU Emacs xref backend using GNU Global

A pretty simple (but, at least for me, effective) backend for emacs 25 xref
library, using GNU Global.

## Prerequisites:

* GNU Global.
* Emacs version >= 25.1

## Disclaimers:

Because the xref API in Emacs 25.1 is experimental, it's likely to
change in ways that will break this package.  I will try to
keep up with API changes.

## Installing:

### Getting the package

#### Using package.el

Gxref is now available on [MELPA](https://melpa.org/#/getting-started).
Once you get MELPA set up, you can install gxref by typing 
```
M-x package-install RET gxref RET
```

#### Manual Installation

Clone the repository, and add it to your load path, or just download
gxref.el and put it in a directory that is already in your load path.

### Setting Up Gxref

Add something like the following to your init.el file:

```elisp
(add-to-list 'xref-backend-functions 'gxref-xref-backend)
```

## Missing/TODO:

* Generate DB at root
* project.el integration.
* Use process-environment to pass GTAGSROOT/GTAGSLABEL/etc.


