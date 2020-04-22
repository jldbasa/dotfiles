" +---------------------------------------------------------------------------+
" | .vimrc file - Jerome Basa <jeromebasa@gmail.com>                          |
" |                                                                           |
" | Disclaimer:                                                               |
" | I just copied most of these stuff, so credits goes to them                |
" +---------------------------------------------------------------------------+

" +---------------------------------------------------------------------------+
" | VIM Settings                                                              |
" +---------------------------------------------------------------------------+
call plug#begin('~/.vim/plugged')

Plug '/usr/local/opt/fzf'       " needed by fzf.vim
Plug 'airblade/vim-gitgutter'   " git diff in the gutter
Plug 'edkolev/tmuxline.vim'     " tmux statusline generator
Plug 'edkolev/promptline.vim'
Plug 'fenetikm/falcon'          " theme
Plug 'jgdavey/tslime.vim'       " send text to running tmux buffer
Plug 'junegunn/fzf.vim'         " fzf
Plug 'junegunn/goyo.vim'        " distraction free writing in vim
Plug 'junegunn/limelight.vim'   " hyperfocus writing
Plug 'myusuf3/numbers.vim'      " display line number (relative or absolute)
Plug 'scrooloose/nerdtree'      " file system explorer
Plug 'sheerun/vim-polyglot'     " language pack
Plug 'thoughtbot/vim-rspec'     " running rspec
Plug 'townk/vim-autoclose'      " complete chars which works in pairs
Plug 'tpope/vim-commentary'     " comment stuff
Plug 'tpope/vim-fugitive'       " git wrapper
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'       " surroundings ([ etc.
Plug 'vim-airline/vim-airline'  " status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'                 " async linting engine
Plug 'cormacrelf/vim-colors-github'

" To evaluate:
" janko-m/vim-test

" Plugin 'tpope/vim-git'
" Plugin 'msanders/snipmate.vim'
" Plugin 'tpope/vim-markdown'
" Plugin 'scrooloose/syntastic'
" Plugin 'slim-template/vim-slim'
" Plugin 'tpope/vim-rails'
" Plugin 'mattn/gist-vim'
" Plugin 'mattn/webapi-vim'
call plug#end()

" Promptline
" sections (a, b, c, x, y, z, warn) are optional
" let g:promptline_preset = {
"         \'a' : [ promptline#slices#cwd() ],
"         \'warn' : [ promptline#slices#last_exit_code() ]}
" let g:promptline_preset = { 
"           \'a' : [ promptline#slices#cwd(), promptline#slices#git_status(), promptline#slices#vcs_branch(), '$(kubectl config current-context)', promptline#slices#last_exit_code()]}

let os = substitute(system('uname'), "\n", "", "")
set nocompatible
set encoding=utf-8

set nolist                         " hide hidden characters
set listchars=tab:▸\ ,eol:¬        " Use the same symbols as TextMate for tabstops and EOLs

set pastetoggle=<f9>


" set color scheme
if has('gui_running')
  " colorscheme Tomorrow-Night
  colorscheme falcon
  " colorscheme github
else
  " colorscheme Tomorrow-Night
  colorscheme falcon
  " colorscheme github
end

" set termguicolors
let g:falcon_airline = 1
" let g:airline_theme = 'minimalist'
let g:airline_theme = 'github'

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
" if has("autocmd")
"   autocmd bufwritepost .vimrc source $MYVIMRC
" endif

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
" | Mappings                                                                  |
" +---------------------------------------------------------------------------+
let mapleader = "\<Space>"
nnoremap <f1> :NERDTreeToggle<cr>
nnoremap <f4> :NumbersToggle<CR>
nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>
nnoremap <Leader>w :w<CR>

" fzf mappings
" nnoremap <f1> :Buffers<cr>
nnoremap <silent> ;; :Buffers<cr>
nnoremap <Leader>o :Files<CR>
nnoremap <silent> <Leader><Leader> :Files<CR>
nnoremap <Leader>l :Lines<CR>
" nnoremap <Leader>ag :Ag <C-R><C-W><CR>
nnoremap <silent> <Leader>ag :Ag <C-R><C-W><CR>
nnoremap <silent> <Leader>AG :Ag <C-R><C-A><CR>
xnoremap <silent> <Leader>ag y:Ag <C-R>"<CR>

" move between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Shortcut to rapidly toggle `set list`
" nmap <leader>l :set list!<CR>

" Open vimrc
nmap <leader>v :tabedit $MYVIMRC<CR>

"clean-up whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

"remap esc with jj
inoremap jj <ESC>

" make Y yank till end of line
nnoremap Y y$

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
"makegreen - MakeGreen plugin and Ruby RSpec. Uncomment to use.
"autocmd BufNewFile,BufRead *_spec.rb compiler rspec

"snipMate
" :filetype plugin on

"syntastic settings
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2

"Rspec.vim
"let g:rspec_command = "!bundle exec rspec {spec}"
let g:rspec_command = 'call Send_to_Tmux("bundle exec rspec {spec}\n")'
" let g:rspec_command = "bundle exec rspec {spec}"
" let g:rspec_runner = "os_x_iterm2"
" let g:rspec_runner = "os_x_terminal"
let g:rspec_runner = "os_x_iterm2"

let g:ackprg = 'ag --vimgrep'


"NERDTree
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1

"limelight
let g:limelight_conceal_ctermfg = 'gray'

"ale
let g:ale_enabled = 0

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
