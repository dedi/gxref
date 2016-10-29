# gxref - GNU Emacs xref backend using GNU Global

## Prerequisites:

* GNU Global.
* Emacs version >= 25.1

## Disclaimers:

Because the xref API in Emacs 25.1 is experimental, it's likely to
change in ways that will break this package.  I will try to
keep up with API changes.

## Installing:

```elisp
(require 'gxref)
(add-to-list 'xref-backend-functions 'gxref-xref-backend)
```

## Missing/TODO:

* Generate DB at root
* project.el integration.
* Use process-environment to pass GTAGSROOT/GTAGSLABEL/etc.
