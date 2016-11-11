#! /usr/bin/perl

#
# Small perl script to convert elisp header comment to markdown
# suitable for a package readme file.
#



# Handle a single line - print it
sub handle_line
{
    s/^;;[;]*[ \t]?//;
    print;
}

# Output the header for the document, with the banners and
# stuff. Added here because I really don't want this stuff in the el
# documentation.
sub write_header
{
    print <<"EOT";
[![MELPA](https://melpa.org/packages/gxref-badge.svg)](https://melpa.org/#/gxref)
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

# [gxref][Repository] - GNU Emacs xref backend using GNU Global

EOT
}


# Main code: loop through .el code, printing header documentation.
while (<>)
{
    # Start printing when finding the commentary header, skipping
    # empty lines after it.
    if (m/^;;; Commentary:/)
    {
        $found_header = 1;
        while (<>)
        {
            last if (!m/^\s*$/);
        }
        write_header()
    }

    # Remove everything except the header comment.
    $found_footer = 1 if (m/^;;; Code:/);

    # Convert commented lines to markdown, with some simple conversions.
    handle_line if ($found_header && !$found_footer)
}

