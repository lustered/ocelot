  syntax on
  set tabstop=4
  set shiftwidth=4
  set expandtab
  set ai
  set number
  set hlsearch
  set ruler
  set noshowmode
  set laststatus=2
  set wildignorecase
  set colorcolumn=80
  set encoding=utf-8
  scriptencoding=utf-8
  set smartcase
  set incsearch hlsearch
  " misc
  set nobackup
  set clipboard=unnamedplus
  set noswapfile
  set noerrorbells
  " set ignorecase

  set termguicolors
  let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
  let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum""]]"

  so $HOME/.vim/coc-vim.vim        " Source coc vim settings

  " *********************************** Plugins **************************
  call plug#begin('~/.vim/plugged')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'sheerun/vim-polyglot'
  Plug 'lifepillar/vim-gruvbox8'
  Plug 'tpope/vim-commentary'
  Plug 'jiangmiao/auto-pairs'
  Plug 'itchyny/lightline.vim'
  Plug 'mhinz/vim-startify'
  Plug 'dense-analysis/ale'
  call plug#end()
  " *********************************** End *******************************

  " ******************** THEME ********************
  colorscheme gruvbox8_hard
  set bg=dark
  " highlight Normal ctermbg=None
  let g:lightline = {
        \ 'colorscheme': 'darcula',
        \}
  " ******************** THEME SETUP ********************

  " Functions & remaps
  function ReplaceSearch (text)
        execute "%s//" . a:text . "/g"
  endfunction

  " Scroll n lines Ctrl-d Ctrl-u
  set scroll=10

  " Jump back to pos with ''
  nnoremap ' `
  " Prevent wrong character ^ when using backspace
  noremap! <C-?> <C-h>

  let g:coc_disable_startup_warning = 1
