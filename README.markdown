# My dotfiles-o-doom!

oh yeah!

## Requirements:

 - git
 - zsh
 - reattach-to-user-namespace from homebrew

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
    Submodule 'vim' (git://github.com/zachseifts/dotfiles_vim.git) registered for path 'vim'
    Cloning into vim...
    remote: Counting objects: 15, done.
    remote: Compressing objects: 100% (8/8), done.
    remote: Total 15 (delta 2), reused 15 (delta 2)
    Receiving objects: 100% (15/15), done.
    Resolving deltas: 100% (2/2), done.
    Submodule path 'vim': checked out '9fcc48d19db444bf22378872a4e88c6cc724ea08'
    Submodule 'vim/bundle/vim-markdown' (git://github.com/tpope/vim-markdown.git) registered for path 'vim/bundle/vim-markdown'
    Cloning into vim/bundle/vim-markdown...
    remote: Counting objects: 88, done.
    remote: Compressing objects: 100% (47/47), done.
    remote: Total 88 (delta 30), reused 75 (delta 18)
    Receiving objects: 100% (88/88), 8.92 KiB, done.
    Resolving deltas: 100% (30/30), done.
    Submodule path 'vim/bundle/vim-markdown': checked out 'fdc0f091c78cd9a474ac3e3cf40ba7d6933ef9da'
    Checking out oh-my-zsh
    Cloning into /Users/zach/.oh-my-zsh...
    remote: Counting objects: 3655, done.
    remote: Compressing objects: 100% (1878/1878), done.
    remote: Total 3655 (delta 2147), reused 2925 (delta 1580)
    Receiving objects: 100% (3655/3655), 476.88 KiB | 641 KiB/s, done.
    Resolving deltas: 100% (2147/2147), done.
    Creating symlinks
    creating symlink to /Users/zach/.inputrc
    creating symlink to /Users/zach/.tmux.conf
    creating symlink to /Users/zach/.vim
    creating symlink to /Users/zach/.vimrc
    creating symlink to /Users/zach/.zshrc
    Okay, done.

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

