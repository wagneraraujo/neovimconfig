syntax on
call plug#begin('~/.vim/plugged')
Plug 'leafOfTree/vim-vue-plugin'
Plug 'luochen1990/rainbow'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/vim-gitbranch'
Plug 'airblade/vim-gitgutter'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'Yggdroot/indentLine'
Plug 'rakr/vim-one'
" if isdirectory('/usr/local/opt/fzf')
"   Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
" else
"   Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
"   Plug 'junegunn/fzf.vim'
" endif
let g:make = 'gmake'
if exists('make')
        let g:make = 'make'
endif
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'plasticboy/vim-markdown'
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'pseewald/vim-anyfold'
Plug 'cakebaker/scss-syntax.vim'
Plug 'Valloric/MatchTagAlways'
Plug 'wakatime/vim-wakatime'
Plug 'jparise/vim-graphql'
Plug 'AndrewRadev/tagalong.vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'mxw/vim-jsx'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Plug 'neoclide/vim-jsx-improve'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-css','coc-tslint-plugin','coc-tsserver','coc-json','coc-fzf-preview','coc-vetur',  'coc-eslint','coc-html','coc-actions','coc-lists','coc-vimlsp' ]
Plug 'LinArcX/mpbtl'
Plug 'jiangmiao/auto-pairs'
Plug 'joshdick/onedark.vim'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'mhinz/vim-mix-format'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/1.x',
  \ 'for': [
      \ 'javascript',
      \ 'typescript',
      \ 'css',
      \ 'less',
      \ 'scss',
      \ 'json',
      \ 'graphql',
      \ 'markdown',
      \ 'vue',
      \ 'yaml',
      \ 'html'] }
" Plug 'w0rp/ale'
" Plug 'tpope/vim-dispatch'
" Plug 'tpope/vim-eunuch'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'morhetz/gruvbox'
Plug 'pantharshit00/vim-prisma'
" Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}
" Plug 'nikvdp/ejs-syntax'
" themes neovim
" srcery-colors/srcery-vim
" Plug 'yonlu/omni.vim' "omni
" Plug 'sainnhe/edge'
Plug 'Th3Whit3Wolf/one-nvim'
" Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
" Plug 'bluz71/vim-nightfly-guicolors'
" Plug 'srcery-colors/srcery-vim'
" Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'sainnhe/sonokai'
" Plug 'embark-theme/vim', { 'as': 'embark' }
" Plug 'mhartington/oceanic-next'
" Plug 'antoinemadec/FixCursorHold.nvim'
" Plug 'rust-lang/rust.vim'
Plug 'airblade/vim-gitgutter'
Plug 'jaredgorski/spacecamp'
" Plug 'AndrewRadev/splitjoin.vim' " gS gJ

Plug 'godlygeek/tabular'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'rakr/vim-colors-rakr'
" Plug 'mhinz/vim-startify'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'camspiers/lens.vim'

Plug 'Galooshi/import-js'

call plug#end()
