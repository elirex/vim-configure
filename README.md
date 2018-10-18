Vim Configure
============

![image](https://elirex.github.io/repo/Vim-Configure/vim.png)


## Installation
You need to execute command the following:

```shellscript
$ git clone --recurse-submodules https://github.com/elirex/vim-configure.git .vim
$ ln -s ~/.vim/vimrc ~/.vimrc
```

or

```shellscript
$ git clone --recurse-submodules https://github.com/elirex/vim-configure.git .vim
$ chmod +x ~/.vim/install
```
## Compiling YCM
Note: Make sure you have CMake and Python headers installed.

```
$ cd ~/.vim/bundle/YouCompleteMe
$ ./install.py --clang-completer
```

## Setup Powerline

### Install powerline

```
# Python2
pip install powerline-status

# Python3
pip3 install powerline-status
```

### Setup fonts

* Install 

```
$ git clone https://github.com/powerline/fonts.git --depth=1
$ cd fonts
$ ./install.sh
$ cd ..
$ rm -rf fonts
```

* Uninstall

```
$ cd fonts
$ uninstall.sh
```

### Setup on Vim

Add command to `.vimrc`, following:

```
# Python2
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

# Python3
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
```

## Plugin
- [vim-fugitive](https://github.com/topoe/vim-figitive) - Provide the convenient of git operation.
- [nerdtree](https://github.com/scrooloose/nerdtree) - Explore your filesystem, open files and directories.
- [hexHightlight](https://github.com/vim-scripts/hexHighlight.vim) - This plugin taggloes a highlight in hex codes color.(only works the graphical version of vim)
- [vim-javascript](https://github.com/pagloss/vim-javascript) - Provide javascript syntax and indet.
- [vim-javascript-syntax](https://github.com/jelera/vim-javascript-syntax) - Enhanced javascript syntax.
- [vim-json](https://github.com/elzr/vim-json) - Enhanced json syntax and code style.
- [xterm-color-table](https://github.com/guns/xterm-color-table.vim) - show the xterm color table.
- [vim-instant-markdown](https://github.com/suan/vim-instant-markdown) - Let you instant preview markdown files and don't need leave the editor.
- [vim-markdown](https://github.com/tpope/vim-markdown) - Enhanced markdown file syntax and let `<anything>.md` files become markdown file type.
- [indentLine](https://github.com/Yggdroot/indentLine) - This plugin is used for displaying thin vertical lines at each indentation level.
- [YouCompleteMe](https://github.com/Valloric/YouCompleteMe#python-semantic-completion) - YouCompleteMe is powerful code complete plugin.
- [snipmate](https://github.com/honza/vim-snippets) - Provide snipmate.
- [UltiSnips](https://github.com/SirVer/ultisnips) - Snippet engine.


These plugins are not original, I make some change to meet my needs.
