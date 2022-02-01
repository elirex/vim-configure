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

## Setup Powerline

### Install powerline

```shellscript
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

Execute the below command in VIM

```
PlugInstall
```

## Plugin
- [nerdtree](https://github.com/scrooloose/nerdtree) - Explore your filesystem, open files and directories.
- [indentLine](https://github.com/Yggdroot/indentLine) - This plugin is used for displaying thin vertical lines at each indentation level.
- [YouCompleteMe](https://github.com/Valloric/YouCompleteMe#python-semantic-completion) - YouCompleteMe is powerful code complete plugin.
- [powerline](https://github.com/powerline/powerline) - This is a powerful statusline plugin.

These plugins are not original, I make some change to meet my needs.
