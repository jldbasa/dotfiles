" +---------------------------------------------------------------------------+
" | .vimrc file - Jerome Lemuel Basa <jerome@basa.ph>                         |
" |                                                                           |
" | Disclaimer:                                                               |
" | I just copied most of these stuff, so credits goes to them                |
" +---------------------------------------------------------------------------+

" +---------------------------------------------------------------------------+
" | VIM Settings                                                              |
" +---------------------------------------------------------------------------+
" pathogen plugin - activate pathogen (fuck yeah!)
silent! call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


set nocompatible
set encoding=utf-8
" set pastetoggle=<F4>


" set color scheme
if has('gui_running')
colorscheme Tomorrow-Night
else
colorscheme Tomorrow-Night
end

set number
set t_Co=256                        " Tell the term has 256 colors
set showcmd                         " Display incomplete commands.
set showmode                        " Display the mode you're in.

set backspace=indent,eol,start      " Intuitive backspacing.

set hidden                          " Handle multiple buffers better.

set wildmenu                        " Enhanced command line completion.
set wildmode=list:longest           " Complete files like a shell.

set ignorecase                      " Case-insensitive searching.
set smartcase                       " But case-sensitive if expression contains a capital letter.

set ruler                           " Show cursor position.

set incsearch                       " Highlight matches as you type.
set hlsearch                        " Highlight matches.

set wrap                            " Turn on line wrapping.
set scrolloff=3                     " Show 3 lines of context around the cursor.
set linebreak                       " Wrap lines at convenient points
set formatoptions=tq
set wrapmargin=4
set textwidth=120
"set cursorline

set title                           " Set the terminal's title
set visualbell                      " No beeping.
syntax enable                       " Turn on syntax highlighting

set nobackup                        " Don't make a backup before overwriting a file.
set nowritebackup                   " And again.
set directory=$HOME/.vim/tmp//,.    " Keep swap files in one location
set autoread

set tabstop=2                       " Global tab width.
set shiftwidth=2                    " And again, related.
set softtabstop=2
set expandtab                       " Use spaces instead of tabs
set smarttab
set laststatus=2                    " Show the status line all the time
set autoindent
set smartindent

set shell=/bin/bash                 " Some commands seem to have problems with zsh"

set wildignore+=vendor,log,tmp,*.swp

"set vim to handle long lines correctly
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" +---------------------------------------------------------------------------+
" | Status line                                                               |
" +---------------------------------------------------------------------------+
set statusline=%f                   "tail of the filename

""display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

set statusline+=%h                  "help file flag
set statusline+=%y                  "filetype
set statusline+=%r                  "read only flag
set statusline+=%m                  "modified flag

set statusline+=%{fugitive#statusline()}

set statusline+=%#error#
set statusline+=%{StatuslineTabWarning()}
set statusline+=%*

set statusline+=%{StatuslineTrailingSpaceWarning()}

set statusline+=%{StatuslineLongLineWarning()}

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"display a warning if &paste is set
set statusline+=%#error#
set statusline+=%{&paste?'[paste]':''}
set statusline+=%*

set statusline+=%=                  "left/right separator
set statusline+=%{StatuslineCurrentHighlight()}\ \ "current highlight
set statusline+=%c,                 "cursor column
set statusline+=%l/%L               "cursor line/total lines
set statusline+=\ %P                "percent through file
set laststatus=2

"set statusline=[%n]\ %<%.99f\ %h%w%m%r%{SL('CapsLockStatusline')}%y%{SL('fugitive#statusline')}%#ErrorMsg#%{SL('SyntasticStatuslineFlag')}%*%=%-14.(%l,%c%V%)\ %P



" +---------------------------------------------------------------------------+
" | Mappings                                                                  |
" +---------------------------------------------------------------------------+
let mapleader=","
nnoremap <f1> :BufExplorer<cr>
nnoremap <f2> :NERDTreeToggle<cr>
nnoremap <f3> :TlistToggle<cr>
nnoremap <f4> :NumbersToggle<CR> 

"clean-up whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>  

"remap esc with jj
inoremap jj <ESC>


" +---------------------------------------------------------------------------+
" | Plugins Specific Settings                                                 |
" +---------------------------------------------------------------------------+
" bufexplorer - set the relative path. Press "R" to switch to absolute
let g:bufExplorerShowRelativePath=1

" taglist
let Tlist_Inc_Winwidth=0

"makegreen - MakeGreen plugin and Ruby RSpec. Uncomment to use.
autocmd BufNewFile,BufRead *_spec.rb compiler rspec

"snipMate
:filetype plugin on

"syntastic settings
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2


" +---------------------------------------------------------------------------+
" | Misc                                                                      |
" +---------------------------------------------------------------------------+
if has("eval")
  function! SL(function)
    if exists('*'.a:function)
      return call(a:function,[])
    else
      return ''
    endif
  endfunction
endif

function! StatuslineTabWarning()
    if !exists("b:statusline_tab_warning")
        let b:statusline_tab_warning = ''

        if !&modifiable
            return b:statusline_tab_warning
        endif

        let tabs = search('^\t', 'nw') != 0

"find spaces that arent used as alignment in the first indent column
        let spaces = search('^ \{' . &ts . ',}[^\t]', 'nw') != 0

        if tabs && spaces
            let b:statusline_tab_warning = '[mixed-indenting]'
        elseif (spaces && !&et) || (tabs && &et)
            let b:statusline_tab_warning = '[&et]'
        endif
    endif
    return b:statusline_tab_warning
endfunction


function! StatuslineTrailingSpaceWarning()
    if !exists("b:statusline_trailing_space_warning")

        if !&modifiable
            let b:statusline_trailing_space_warning = ''
            return b:statusline_trailing_space_warning
        endif

        if search('\s\+$', 'nw') != 0
            let b:statusline_trailing_space_warning = '[\s]'
        else
            let b:statusline_trailing_space_warning = ''
        endif
    endif
    return b:statusline_trailing_space_warning
endfunction

function! StatuslineLongLineWarning()
    if !exists("b:statusline_long_line_warning")

        if !&modifiable
            let b:statusline_long_line_warning = ''
            return b:statusline_long_line_warning
        endif

        let long_line_lens = s:LongLines()

        if len(long_line_lens) > 0
            let b:statusline_long_line_warning = "[" .
                        \ '#' . len(long_line_lens) . "," .
                        \ 'm' . s:Median(long_line_lens) . "," .
                        \ '$' . max(long_line_lens) . "]"
        else
            let b:statusline_long_line_warning = ""
        endif
    endif
    return b:statusline_long_line_warning
endfunction

function! s:LongLines()
    let threshold = (&tw ? &tw : 80)
    let spaces = repeat(" ", &ts)

    let long_line_lens = []

    let i = 1
    while i <= line("$")
        let len = strlen(substitute(getline(i), '\t', spaces, 'g'))
        if len > threshold
            call add(long_line_lens, len)
        endif
        let i += 1
    endwhile

    return long_line_lens
endfunction

function! s:Median(nums)
    let nums = sort(a:nums)
    let l = len(nums)

    if l % 2 == 1
        let i = (l-1) / 2
        return nums[i]
    else
        return (nums[l/2] + nums[(l/2)-1]) / 2
    endif
endfunction

function! StatuslineCurrentHighlight()
    let name = synIDattr(synID(line('.'),col('.'),1),'name')
    if name == ''
        return ''
    else
        return '[' . name . ']'
    endif
endfunction