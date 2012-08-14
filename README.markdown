# My dotfiles-o-doom!

oh yeah!

## Requirements:

 - git
 - zsh
 - reattach-to-user-namespace from homebrew
 - ctags from homebrew

## Install

First run:

    $ cd $HOME
    $ git clone git@github.com:zachseifts/dotfiles.git $HOME/.dotfiles
    Cloning into /Users/zach/.dotfiles...
    remote: Counting objects: 315, done.
    remote: Compressing objects: 100% (246/246), done.
    remote: Total 315 (delta 128), reused 128 (delta 54)
    Receiving objects: 100% (315/315), 734.83 KiB | 385 KiB/s, done.
    Resolving deltas: 100% (128/128), done.

Then:

    $ $HOME/.dotfiles/init.sh 
    Dotfiles exist, pulling in changes
    Already up-to-date.
    Already up-to-date.
    Submodule 'vim/bundle/vim-fugitive' (https://github.com/tpope/vim-fugitive.git) registered for path 'vim/bundle/vim-fugitive'
    Submodule 'vim/bundle/vim-markdown' (https://github.com/tpope/vim-markdown.git) registered for path 'vim/bundle/vim-markdown'
    Submodule 'vim/bundle/vim-surround' (https://github.com/tpope/vim-surround.git) registered for path 'vim/bundle/vim-surround'
    Cloning into 'vim/bundle/vim-fugitive'...
    remote: Counting objects: 1308, done.
    remote: Compressing objects: 100% (480/480), done.
    remote: Total 1308 (delta 554), reused 1238 (delta 495)
    Receiving objects: 100% (1308/1308), 168.98 KiB | 288 KiB/s, done.
    Resolving deltas: 100% (554/554), done.
    Submodule path 'vim/bundle/vim-fugitive': checked out '745ccf50662fc18c11e0c7a397b59e07a5a13141'
    Cloning into 'vim/bundle/vim-markdown'...
    remote: Counting objects: 104, done.
    remote: Compressing objects: 100% (49/49), done.
    remote: Total 104 (delta 38), reused 91 (delta 28)
    Receiving objects: 100% (104/104), 10.57 KiB, done.
    Resolving deltas: 100% (38/38), done.
    Submodule path 'vim/bundle/vim-markdown': checked out '7b747d0aa4f2ff2239983c05bb4f18ea6e760770'
    Cloning into 'vim/bundle/vim-surround'...
    remote: Counting objects: 305, done.
    remote: Compressing objects: 100% (147/147), done.
    remote: Total 305 (delta 91), reused 275 (delta 63)
    Receiving objects: 100% (305/305), 58.26 KiB | 78 KiB/s, done.
    Resolving deltas: 100% (91/91), done.
    Submodule path 'vim/bundle/vim-surround': checked out '1a73f607f8f5477d6942df2eb6e7245c4864f4d3'
    Already up-to-date.
    Creating symlinks
    inputrc symlink exists, removing
    creating symlink to /Users/zach/.inputrc
    tmux.conf symlink exists, removing
    creating symlink to /Users/zach/.tmux.conf
    vim symlink exists, removing
    creating symlink to /Users/zach/.vim
    vim symlink exists, removing
    creating symlink to /Users/zach/.vimrc
    zshrc symlink exists, removing
    creating symlink to /Users/zach/.zshrc
    Okay, done.

## Optional

Set git-diff to always display with color (like git diff --color):

    $ git config --global color.diff always

## Update

Of if you area already using these dotfiles:

    $ $HOME/.dotfiles/init.sh 
    Dotfiles exist, pulling in changes
    Already up-to-date.
    Already up-to-date.
    Already up-to-date.
    Creating symlinks
    inputrc symlink exists, removing
    creating symlink to /Users/zach/.inputrc
    tmux.conf symlink exists, removing
    creating symlink to /Users/zach/.tmux.conf
    vim symlink exists, removing
    creating symlink to /Users/zach/.vim
    vim symlink exists, removing
    creating symlink to /Users/zach/.vimrc
    zshrc symlink exists, removing
    creating symlink to /Users/zach/.zshrc
    Okay, done.

Now change your shell to `zsh` and you're setup.

