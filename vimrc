" +---------------------------------------------------------------------------+
" | .vimrc file - Jerome Lemuel Basa <jerome@basa.ph>                         |
" |                                                                           |
" | Disclaimer:                                                               |
" | I just copied most of these stuff, so credits goes to them                |
" +---------------------------------------------------------------------------+

" +---------------------------------------------------------------------------+
" | VIM Settings                                                              |
" +---------------------------------------------------------------------------+
" vundle
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-git'
Plugin 'msanders/snipmate.vim'
Plugin 'tpope/vim-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'myusuf3/numbers.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'slim-template/vim-slim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-rails'
Plugin 'jgdavey/tslime.vim'
Plugin 'mattn/gist-vim'
Plugin 'mattn/webapi-vim'

call vundle#end()

let os = substitute(system('uname'), "\n", "", "")
set nocompatible
set encoding=utf-8

set nolist                         " hide hidden characters
set listchars=tab:▸\ ,eol:¬        " Use the same symbols as TextMate for tabstops and EOLs

set pastetoggle=<f9>


" set color scheme
if has('gui_running')
  colorscheme Tomorrow-Night
else
  colorscheme Tomorrow-Night
end

set tags=./tags;                    " Set the tag file search order
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

set title                           " Set the terminal's title
set visualbell                      " No beeping.
syntax enable                       " Turn on syntax highlighting

set noswapfile                      " Don't create swapfile
set nobackup                        " Don't make a backup before overwriting a file.
set nowritebackup                   " And again.
set directory=$HOME/.vim/tmp//,.    " Keep swap files in one location
set autoread

set tabstop=2                       " Global tab width.
set softtabstop=2                   " When hitting backspace
set shiftwidth=2                    " When using indentation
set expandtab                       " Use spaces instead of tabs

set smarttab
set laststatus=2                    " Show the status line all the time
set autoindent
set smartindent

set shell=/bin/bash                 " Some commands seem to have problems with zsh"

set wildignore+=vendor,log,tmp,*.swp

set splitbelow                      " Split opening
set splitright

"set vim to handle long lines correctly
set wrap
set textwidth=120
set formatoptions=qrn1
set colorcolumn=125

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         


" +---------------------------------------------------------------------------+
" | Whitespace preferences and filetypes                                      |
" +---------------------------------------------------------------------------+
" Only do this part when compiled with support for autocommands
if has("autocmd")
  " Enable file type detection
  filetype on
   
  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
   
  " Customisations based on house-style (arbitrary)
  autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
   
  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml

  autocmd BufWritePre *.rb,*.js :call <SID>StripTrailingWhitespaces()
endif

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

set statusline=[%n]\ %<%.99f\ %h%w%m%r%{SL('CapsLockStatusline')}%y%{SL('fugitive#statusline')}%#ErrorMsg#%{SL('SyntasticStatuslineFlag')}%*%=%-14.(%l,%c%V%)\ %P


" +---------------------------------------------------------------------------+
" | Mappings                                                                  |
" +---------------------------------------------------------------------------+
let mapleader = "\<Space>"
nnoremap <f1> :BufExplorer<cr>
nnoremap <f2> :NERDTreeToggle<cr>
nnoremap <f4> :NumbersToggle<CR> 
nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>. :CtrlPTag<CR>
nnoremap <Leader>w :w<CR>

" move between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Open vimrc
nmap <leader>v :tabedit $MYVIMRC<CR>

"clean-up whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>  

"remap esc with jj
inoremap jj <ESC>

" tabs
" For mac users (using the 'apple' key)
if os == "Darwin"
  map <D-S-]> gt
  map <D-S-[> gT
  map <D-1> 1gt
  map <D-2> 2gt
  map <D-3> 3gt
  map <D-4> 4gt
  map <D-5> 5gt
  map <D-6> 6gt
  map <D-7> 7gt
  map <D-8> 8gt
  map <D-9> 9gt
  map <D-0> :tablast<CR>
else
" for linux and windows users (using the control key)
  map <C-S-]> gt
  map <C-S-[> gT
  map <C-1> 1gt
  map <C-2> 2gt
  map <C-3> 3gt
  map <C-4> 4gt
  map <C-5> 5gt
  map <C-6> 6gt
  map <C-7> 7gt
  map <C-8> 8gt
  map <C-9> 9gt
  map <C-0> :tablast<CR>
endif

" Rspec.vim mappings
map <Leader>f :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>d :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

map <leader>c :Tmux bundle exec rubocop --rails --display-cop-names --display-style-guide<CR>


" +---------------------------------------------------------------------------+
" | Plugins Specific Settings                                                 |
" +---------------------------------------------------------------------------+
" bufexplorer - set the relative path. Press "R" to switch to absolute
let g:bufExplorerShowRelativePath=1

"makegreen - MakeGreen plugin and Ruby RSpec. Uncomment to use.
"autocmd BufNewFile,BufRead *_spec.rb compiler rspec

"snipMate
:filetype plugin on

"syntastic settings
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2

"ctrlp settings
set runtimepath^=~/.vim/bundle/ctrlp.vim

"Rspec.vim
"let g:rspec_command = "!bundle exec rspec {spec}"
let g:rspec_command = 'call Send_to_Tmux("bundle exec rspec {spec}\n")'
let g:rspec_runner = "os_x_iterm2"

let g:ackprg = 'ag --vimgrep'


"NERDTree
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1

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

function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
