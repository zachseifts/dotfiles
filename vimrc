call pathogen#infect()

set nocompatible " Disable complete vi compatibility
set background=dark " Easier-to-read colors for dark backgrounds
set history=1000 " Keep command line history
set ignorecase " Case-insensitive searching
set matchtime=2 " Time between bracket jumping for showmatch
set nobackup " Don't make backup files
set nohlsearch " No search highlighting
set noincsearch " No incremental searching
set noshowcmd " Don't show incomplete commands
set showmatch " Show matching brackets
set ruler " Show cursor information
set smartcase " Case-sensitive searching for searches with uppercase letters
set textwidth=0 " No hard line wrapping
set wildmode=list " More useful command completion
set nowrap " I'm sick of having to do this all the time
set nospell " No spell correction
set foldmethod=marker " Sets foldmethod to marker
set expandtab " Yes to expand tab
set tabstop=2 " Set the default tabs to 2 spaces
set shiftwidth=2 " Set shift width to 2
set autoindent " Turn on auto indent
set smartindent " Turn on smart indent
set number " Line numbering and coloring below
highlight LineNr term=bold cterm=NONE ctermfg=Green ctermbg=NONE gui=NONE guifg=Blue guibg=NONE

syntax enable " Automatic syntax highlighting

" A nicer-looking tabline (vim7 only)
if exists(":tabnew") == 2
    highlight TabLine term=underline cterm=bold,underline ctermfg=Grey gui=underline
    highlight TabLineFill term=underline cterm=bold,underline gui=underline guibg=DarkGrey
    highlight TabLineSel term=reverse cterm=reverse gui=reverse
endif

" Setup syntax highlighting for things
autocmd BufNewFile,BufRead *.install  set ft=php
autocmd BufNewFile,BufRead *.profile  set ft=php
autocmd BufNewFile,BufRead *.md  set ft=markdown

