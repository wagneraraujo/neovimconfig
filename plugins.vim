syntax on
call plug#begin('~/.vim/plugged')
Plug 'leafOfTree/vim-vue-plugin'
Plug 'luochen1990/rainbow'
" Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/vim-gitbranch'
Plug 'airblade/vim-gitgutter'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'Yggdroot/indentLine'
" Plug 'rakr/vim-one'
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
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
" Plug 'pseewald/vim-anyfold'
Plug 'cakebaker/scss-syntax.vim'
" Plug 'Valloric/MatchTagAlways'
Plug 'wakatime/vim-wakatime'
Plug 'jparise/vim-graphql'
Plug 'AndrewRadev/tagalong.vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'mxw/vim-jsx'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'neoclide/vim-jsx-improve'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-css','coc-styled-components','coc-json','coc-fzf-preview','coc-eslint', 'coc-highlight','coc-tsserver','coc-vimlsp','coc-prettier' ]

Plug 'LinArcX/mpbtl'
Plug 'jiangmiao/auto-pairs'
" Plug 'joshdick/onedark.vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'mhinz/vim-mix-format'
" Plug 'prettier/vim-prettier', {
"  \ 'do': 'yarn install',
"  \ 'branch': 'release/1.x',
"  \ 'for': [
"      \ 'javascript',
"      \ 'typescript',
"      \ 'css',
"      \ 'less',
"      \ 'scss',
"      \ 'json',
"      \ 'graphql',
"      \ 'markdown',
"      \ 'vue',
"      \ 'yaml',
"      \ 'html'] }
Plug 'w0rp/ale'
Plug 'tpope/vim-dispatch'
" Plug 'pantharshit00/vim-prisma'
" Plug 'yonlu/omni.vim' "omni
" Plug 'sainnhe/edge'
" Plug 'Th3Whit3Wolf/one-nvim'
" Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
" Plug 'bluz71/vim-nightfly-guicolors'
" Plug 'srcery-colors/srcery-vim'
" Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'sainnhe/sonokai'
" Plug 'embark-theme/vim', { 'as': 'embark' }
" Plug 'mhartington/oceanic-next'
" Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'rust-lang/rust.vim'
" Plug 'airblade/vim-gitgutter'
" Plug 'jaredgorski/spacecamp'
" Plug 'AndrewRadev/splitjoin.vim' " gS gJ

Plug 'godlygeek/tabular'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'rakr/vim-colors-rakr'
" Plug 'mhinz/vim-startify'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'camspiers/lens.vim'

Plug 'Galooshi/import-js'

" Plug 'jaredgorski/spacecamp'
" Plug 'ghifarit53/tokyonight-vim'
" Plug 'haishanh/night-owl.vim'


" Plug 'tpope/vim-sleuth' " shiftwidth expandtab softtabstop smarttab
Plug 'tyru/caw.vim'
Plug 'jparise/vim-graphql'
Plug 'peitalin/vim-jsx-typescript'
Plug 'AndrewRadev/tagalong.vim'
Plug 'vim-syntastic/syntastic'
Plug 'neovim/nvim-lspconfig'
Plug 'leafOfTree/vim-matchtag'
" Plug 'preservim/tagbar'
Plug 'preservim/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'alvan/vim-closetag'
Plug 'projekt0n/github-nvim-theme'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'akinsho/bufferline.nvim'
" Plug 'kyazdani42/nvim-tree.lua'
Plug 'yamatsum/nvim-cursorline'
Plug 'simeji/winresizer'
Plug 'pseewald/vim-anyfold'


call plug#end()



"lsp typescriot
"npm install -g typescript typescript-language-server diagnostic-languageserver eslint_d
