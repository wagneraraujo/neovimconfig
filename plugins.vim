syntax on
call plug#begin('~/.vim/plugged')
Plug 'leafOfTree/vim-vue-plugin'
Plug 'luochen1990/rainbow'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/vim-gitbranch'
Plug 'airblade/vim-gitgutter'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'Yggdroot/indentLine'
if isdirectory('/usr/local/opt/fzf')
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
endif
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
Plug 'cakebaker/scss-syntax.vim'
Plug 'wakatime/vim-wakatime'
Plug 'jparise/vim-graphql'
Plug 'AndrewRadev/tagalong.vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'mxw/vim-jsx'
Plug 'neoclide/vim-jsx-improve'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-css','coc-styled-components','coc-json','coc-fzf-preview', 'coc-rust-analyzer', 'coc-tsserver' ]
Plug 'dense-analysis/ale'
Plug 'LinArcX/mpbtl'
Plug 'jiangmiao/auto-pairs'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'mhinz/vim-mix-format'
Plug 'w0rp/ale'
Plug 'tpope/vim-dispatch'
Plug 'yonlu/omni.vim' "omni
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'rust-lang/rust.vim'
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'camspiers/lens.vim'
Plug 'Galooshi/import-js'
Plug 'tyru/caw.vim'
Plug 'jparise/vim-graphql'
Plug 'peitalin/vim-jsx-typescript'
Plug 'vim-syntastic/syntastic'
Plug 'leafOfTree/vim-matchtag'
Plug 'sbdchd/neoformat'
Plug 'mlaursen/vim-react-snippets'
Plug 'alvan/vim-closetag'
Plug 'projekt0n/github-nvim-theme'
Plug 'simeji/winresizer'
Plug 'pseewald/vim-anyfold'
Plug 'tveskag/nvim-blame-line'
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'norcalli/nvim-colorizer.lua'
Plug 'alvan/vim-closetag'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ludovicchabant/vim-gutentags'
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
call plug#end()



"lsp typescriot
"npm install -g typescript typescript-language-server diagnostic-languageserver eslint_d
