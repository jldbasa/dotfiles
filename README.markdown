dotfiles
======
Contains various . files e.g. `.screenrc`, `.gitignore`

For vim, you can open the file `.gitmodules` to see which plugins are installed. 
I use [pathogen.vim](https://github.com/tpope/vim-pathogen) to bundle them.


Installation
------------
    ## Clone Repo
    $ mkdir ~/Github
    $ cd ~/Github
    $ git clone https://jldbasa@github.com/jldbasa/dotfiles.git
    $ chmod +x install.sh
    $ ./install.sh


Adding VIM plugins
------------
- to add, use `git submodule` command e.g. `git submodule add 
  git://github.com/ervandew/supertab.git bundle/supertab`


Assets
------------
- Install *ubuntu-mono-powerline-ttf* - `git clone
  https://github.com/pdf/ubuntu-mono-powerline-ttf.git
  ~/.fonts/ubuntu-mono-powerline-ttf` and `fc-cache -vf`
    

Plugins Tips
------------
- bufexplorer
  - `\be` - brings up the bufexplorer window
  - `q`   - closes the bufexplorer window
- vim-fugitive
  - `Gstatus` - brings up the status window
  - `-` - add/reset a file's change
  - `C` - perform git commit
  - `q` - closes status window
- vim-powerline
  - [powerline font](https://github.com/Lokaltog/vim-powerline/tree/develop/fontpatcher)


Other Settings
------------
- Terminal
  - Background color: #262626
  - Foregroud color: #C5C8C6


References
------------
- [Coming home to vim](http://stevelosh.com/blog/2010/09/coming-home-to-vim/?)
