"" tabs
let mapleader = ","
map <leader>tt :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>

"" custom setting
set backspace=eol,start,indent
set nocompatible
set history=1000
set undolevels=1500
set wildmenu
set wildmode=list:longest:full
vmap <BS> x
set scrolloff=10
set cmdheight=2
set linebreak
set textwidth=500
set mouse-=a
set noerrorbells

"" encoding
set fenc=utf-8
set enc=utf-8

"" search options
set wrapscan
set incsearch
set ignorecase
set hlsearch

"" syntax / filetype
syntax enable
au BufNewFile,BufRead *.jake,*.param set filetype=perl
au BufNewFile,BufRead *.ros set filetype=html

"" shortcut
ab perl} <?perl } /?>
ab perlif <?perl if ($btv{""}) { /?>
ab perlelsif <?perl } elsif ($btv{""}) { /?>
ab perlelse <?perl } else { /?>
ab perldefine <?perl $btv{""}= ; /?>
ab kfinclude <?include ""/?>

"" extra auto command
au BufNewFile *.pl,*.cgi s,^,#!/usr/local/bin/perl -w\r#\r\ruse strict;\r\r,
au BufNewFile *.sh s,^,#!/bin/sh\r#\r\r,
au BufNewFile,BufRead *.jake,*.param,*.ros set filetype=html
au BufNewFile,BufRead *.jake,*.param,*.ros set filetype=html

"" toggles
map <F3> :set paste<CR>
map <F4> :set nopaste<CR>
imap <F3> <C-O>:set paste<CR>
imap <F4> <nop>
set pastetoggle=<F4>
:map <F6> [I:let nr = input("Which one: ")<Bar>exe "normal " . nr . "[\t"<CR>

"" ui
set background=light
set ruler
set showmatch matchtime=3
set laststatus=2
set title

"" tab / indentation
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
nnoremap <Esc>P P'[v']=
nnoremap <Esc>p p'[v']=
"" set tabstop=4 softtabstop=4 expandtab

"" php
let php_sql_query=1
let php_htmlInStrings=1
let php_noShortTags=1
let php_folding=1
let php_parent_error_close=1

"" folding
set foldmethod=indent
set foldlevelstart=99
set foldnestmax=2
set foldminlines=5
