Overview
========

This is a simple Vim function that converts non ASCII punctuation marks (like
'smart' quotes) to their ASCII equivalents.

Why? You have a text document that you want to copy/paste to applications that
require ASCII (ie, SQL datatases, bash scripts, etc)

Usage:

    call utf2ascii#replaceUTF()

Set up your own command to replace UTF characters in your document:

    command! UTFToASCII :call utf2ascii#replaceUTF()<cr>


Note: Vim is itself 'utf aware' but your buffer must be properly configured to
handle UTF -- neovim/vim usually are configured this way (`:set
fileencoding=utf-8 | set encoding=utf-8`).
