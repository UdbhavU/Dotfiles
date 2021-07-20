" install plug.vim from github to .config/nvim/autoload
set number
set hidden                              " Required to keep multiple buffers open multiple buffers
set relativenumber
set tabstop=4
set mouse=a
set nocompatible
set tabstop=2                           "the width of a tab
set shiftwidth=2                        "the width for indent
set t_Co=256                            " Support 256 colors
set ruler		              			" Show the cursor position all the time
let g:python_host_prog = '/usr/bin/python2' " ---------- Set python 2 provider
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
filetype off							" required to be off for loading plugins
call plug#begin(stdpath('data'),'/plugged')
  Plug 'tpope/vim-sensible'
  Plug 'mhinz/vim-startify'
  Plug 'Yggdroot/indentLine'
  Plug 'ryanoasis/vim-devicons'
  Plug 'myusuf3/numbers.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ianks/gruvbox'
  Plug 'airblade/vim-gitgutter'
  Plug 'altercation/vim-colors-solarized'
	Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
  Plug 'jiangmiao/auto-pairs'
  Plug 'ervandew/supertab'
  Plug 'tpope/vim-endwise'
  Plug 'scrooloose/nerdcommenter'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'easymotion/vim-easymotion'
  Plug 'wellle/targets.vim'
  Plug 'tpope/vim-surround'
  Plug 'junegunn/vim-easy-align'
  Plug 'wellle/targets.vim'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'neomake/neomake'
  Plug 'kassio/neoterm'
  Plug 'sjl/gundo.vim'
  Plug 'chrisbra/NrrwRgn'
 Plug 'asins/vimcdoc'
  "Plug 'lilydjwg/fcitx.vim'
  Plug 'junegunn/vim-github-dashboard'
" documentation
  Plug 'rhysd/nyaovim-markdown-preview'
  Plug 'xolox/vim-notes'
  Plug 'xolox/vim-misc'
  Plug 'itchyny/calendar.vim'
  Plug 'junegunn/vim-journal'
" navigation
  Plug 'scrooloose/nerdtree'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'wesleyche/SrcExpl'
  Plug 'majutsushi/tagbar'
  Plug 'rizzatti/dash.vim'
  Plug 'eugen0329/vim-esearch'
" c/c++
  Plug 'zhranklin/deoplete-clang'
" java
  Plug 'artur-shaik/vim-javacomplete2'
  Plug 'vhakulinen/neovim-intellij-complete-deoplete'
" python
  Plug 'zchee/deoplete-jedi'
" html/css/javascript
  Plug 'mattn/emmet-vim'
  Plug 'ensime/ensime-vim', { 'do': function('DoRemote') }
call plug#end()
