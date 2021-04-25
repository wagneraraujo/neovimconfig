
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/vim-gitbranch'
Plug 'airblade/vim-gitgutter'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'
Plug 'rakr/vim-one'
Plug 'arcticicestudio/nord-vim'
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
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'pseewald/vim-anyfold'
Plug 'cakebaker/scss-syntax.vim'
Plug 'Valloric/MatchTagAlways'
Plug 'wakatime/vim-wakatime'
Plug 'jparise/vim-graphql'
Plug 'AndrewRadev/tagalong.vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'mxw/vim-jsx'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'neoclide/vim-jsx-improve'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
let g:coc_global_extensions = ['coc-css','coc-json','coc-fzf-preview','coc-stylelint','coc-tsserver', 'coc-styled-components', 'coc-vetur','coc-cssmodules', 'coc-emmet', 'coc-eslint', 'coc-graphql','coc-html', 'coc-phpls','coc-vetur']
Plug 'LinArcX/mpbtl'
Plug 'jiangmiao/auto-pairs'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/1.x',
  \ 'for': ['javascript', 'php', 'typescript', 'css','sass', 'styled-components','less', 'scss', 'json',   'vue', 'yaml', 'html'] }
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sainnhe/sonokai'
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'mhartington/oceanic-next'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'mhinz/vim-mix-format'
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
" If you want to have icons in your statusline choose one of these
Plug 'bluz71/vim-moonfly-colors'
Plug 'yonlu/omni.vim' "omni
Plug 'kyazdani42/nvim-web-devicons'
"" Object/AST tag bar - F4
Plug 'majutsushi/tagbar'
"" Linter
Plug 'w0rp/ale'
"" Highlight word under cursor
Plug 'RRethy/vim-illuminate'
" Dispatch tasks to run async e.g: `:Dispatch PlugInstall`
Plug 'tpope/vim-dispatch'
"Initialize plugin system
"Plug 'ms-jpq/chadtree'

"" File/Buffer operations :Rename, :Move, :Delete, :Chmod, :SudoEdit
Plug 'tpope/vim-eunuch'
Plug 'romgrk/github-light.vim'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'sainnhe/edge'

call plug#end()

set t_Co=256
set termguicolors     " enable true colors support
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme edge
"edge github_light nightfly OceanicNext night-owl onedark  onehalfdark  ayu onehalflight hybrid_material 
let g:airline_theme ='edge'  " jellybeans  'bubblegum'   'powerlineish'
set background=dark
"set notermguicolors
" set guifont=monoid\ Regular\ Font\ 11
"set guifont=Hasklig
"set guifont=Hasklig:h26

"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast
set wildmenu
"" Fix backspace indent
set backspace=indent,eol,start
set autoindent
set lazyredraw
"" Tabs. May be overridden by autocmd rules
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab
"set relativenumber
set confirm

filetype plugin indent on

"""theme""""
set t_Co=256
set termguicolors     " enable true colors support
let base16colorspace=256  " Access colors present in 256 colorspace
"colorscheme embark "night-owl onedark  onehalfdark  ayu onehalflight hybrid_material 
"set notermguicolors
set guifont=monoid\ Regular\ Font\ 11
"set guifont=Hasklig
"set guifont=Hasklig:h26

"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast
set wildmenu
"" Fix backspace indent
set backspace=indent,eol,start
set autoindent
set lazyredraw
"" Tabs. May be overridden by autocmd rules
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab
"set relativenumber
set confirm
"" Map leader to ,
let mapleader=','

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set fileformats=unix,dos,mac

if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif

" session management
" let g:session_directory = "~/.vim/session"
" let g:session_autoload = "no"
" let g:session_autosave = "no"
" let g:session_command_aliases = 1

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
syntax on
set ruler
set number

let no_buffers_menu=1
"silent! colorscheme molokai

set mousemodel=popup
set t_Co=256
set guioptions=egmrti
set gfn=Monospace\ 10

if has("gui_running")
  if has("gui_mac") || has("gui_macvim")
    set transparency=7
  endif
else
  let g:CSApprox_loaded = 1

  " IndentLine
  let g:indentLine_enabled = 1
  let g:indentLine_concealcursor = 0
  let g:indentLine_char = '|'
  let g:indentLine_faster = 1
  let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2

  
  if $COLORTERM == 'gnome-terminal'
    set term=gnome-256color
  else
    if $TERM == 'xterm'
      set term=xterm-256color
    endif
  endif
  
endif


if &term =~ '256color'
  set t_ut=
endif

" Display options
set showmode
set showcmd
"" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

"set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

" vim-airline
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=0
let g:nerdtree_tabs_focus_on_files=0
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 30
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <C-]> :NERDTreeFind<CR>
nnoremap <silent> <C-\> :NERDTreeToggle<CR>

"Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

let NERDTreeAutoDeleteBuffer = 1
"making it prettier
let NERDTreeDirArrows = 1
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1

" grep.vim
nnoremap <silent> <leader>f :Rgrep<CR>
let Grep_Default_Options = '-IR'
let Grep_Skip_Files = '*.log *.db'
let Grep_Skip_Dirs = '.git node_modules'

" terminal emulation
nnoremap <silent> <leader>sh :terminal<CR>


"*****************************************************************************
"" Commands
"*****************************************************************************
" remove trailing whitespaces
command! FixWhitespace :%s/\s\+$//e

"*****************************************************************************
"" Functions
"*****************************************************************************
if !exists('*s:setupWrapping')
  function s:setupWrapping()
    set wrap
    set wm=2
    set textwidth=79
  endfunction
endif

"*****************************************************************************
"" Autocmd Rules
"*****************************************************************************
"" The PC is fast enough, do syntax highlight syncing from start unless 200 lines
augroup vimrc-sync-fromstart
  autocmd!
  autocmd BufEnter * :syntax sync maxlines=200
augroup END

"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

"" txt
augroup vimrc-wrapping
  autocmd!
  autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END

"" make/cmake
augroup vimrc-make-cmake
  autocmd!
  autocmd FileType make setlocal noexpandtab
  autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake
augroup END

set autoread

"*****************************************************************************
"" Mappings
"*****************************************************************************

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>

" session management
" nnoremap <leader>so :OpenSession<Space>
" nnoremap <leader>ss :SaveSession<Space>
" nnoremap <leader>sd :DeleteSession<CR>
" nnoremap <leader>sc :CloseSession<CR>

"" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

"" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

"" fzf.vim
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

" The Silver Searcher
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
  set grepprg=ag\ --nogroup\ --nocolor
endif

" ripgrep
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif

cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>e :FZF -m<CR>
nnoremap <c-p> :Files <cr>
nnoremap <c-i> :Ag<space>

"Recovery commands from history through FZF
nmap <leader>y :History:<CR>

" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"

" ale
let g:ale_linters = {}

" Tagbar
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" Disable visualbell
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif

"" Buffer nav
noremap <leader>z :bp<CR>
noremap <leader>q :bp<CR>
noremap <leader>x :bn<CR>
noremap <leader>w :bn<CR>
"nnoremap <C-Right>:bn <CR>
"nnorema <C-Left>:bp <CR>

"" Close buffer
"noremap <leader>c :bd<CR>

"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"" Open current line on GitHub
nnoremap <Leader>o :.Gbrowse<CR>

"*****************************************************************************
"" Custom configs
"*****************************************************************************
" html
" for html files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab


" javascript
let g:javascript_enable_domhtmlcss = 1

" vim-javascript
augroup vimrc-javascript
  autocmd!
  autocmd FileType javascript setl tabstop=2|setl shiftwidth=2|setl expandtab softtabstop=2
augroup END


" vim-python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
      \ formatoptions+=croq softtabstop=4
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END

" jedi-vim
let g:jedi#popup_on_dot = 0
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "0"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#smart_auto_mappings = 0

" ale
:call extend(g:ale_linters, {
    \'python': ['flake8'], })

" vim-airline
let g:airline#extensions#virtualenv#enabled = 1

" Syntax highlight
" Default highlight is better than polyglot
let g:polyglot_disabled = ['python']
let python_highlight_all = 1


" typescript
let g:yats_host_keyword = 1



"*****************************************************************************
"*****************************************************************************

"" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

"*****************************************************************************
"" Convenience variables
"*****************************************************************************

" vim-airline
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif


" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
inoremap <C-S> <C-O>:update<CR>
" The Silver Searcher
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
  set grepprg=ag\ --nogroup\ --nocolor
endif
" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

let g:enable_bold_font = 1
let g:enable_italic_font = 1
let g:rainbow_active = 1

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = '|'
let g:indentLine_faster = 1

let g:neotags#javascript#order = 'cCfmpo'
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'ejs' : 1,
    \ 'jsx' : 1,
    \ 'js' : 1,
    \ 'php' : 1,
    \}
let g:mta_use_matchparen_group = 1
let g:mta_set_default_matchtag_color = 1

"netrw
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

" Remover highlight da busca com <leader><space>
nnoremap <leader><space> :nohlsearch<cr>
" Define o atalho Ctrl + N para abrir :Buffers com o fzf
"nnoremap <c-o> :Buffers<cr>
autocmd FileType html,css,php,js  EmmetInstall
"imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

let g:user_emmet_install_global =1
"autocmd FileType html,css,ejs,jsx,js, EmmetInstal
let g:user_emmet_leader_key=','
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.

set clipboard+=unnamedplus
let g:javascript_enable_domhtmlcss = 1
let g:enable_bold_font = 1
let g:enable_italic_font = 1


let g:jsx_ext_required = 1
syn region xmlTagName matchgroup=xmlEndTag start=+</+ end=+>+
let g:mta_use_matchparen_group = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'jsx' : 1,
    \ 'js' : 1
    \}

let g:vim_jsx_pretty_highlight_close_tag = 1
let g:vim_jsx_pretty_colorful_config = 1
let g:jsx_ext_required = 0
let g:xml_syntax_folding = 0
let g:jsx_pragma_required = 1

au Filetype FILETYPE let b:AutoPairs = {"(": ")"}
au FileType php      let b:AutoPairs = AutoPairsDefine({'<?' : '?>', '<?php': '?>'})
let g:mta_use_matchparen_group = 1
highlight MatchTag ctermfg=black ctermbg=lightgreen guifg=black guibg=lightgreen
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'js' : 1,
    \ 'jsx' : 1,
    \ 'ejs' : 1,
    \}
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)

" The Silver Searcher
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
  set grepprg=ag\ --nogroup\ --nocolor
endif

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

"vim-anyfold
":AnyFoldActivate -> [[  ]]  [j [k
let g:anyfold_fold_comments=1
set foldlevel=0
autocmd Filetype cpp set foldignore=#/

"ctags e autoimport
let g:js_file_import_sort_after_insert = 1
let g:js_file_import_use_fzf = 1
set wildignore+=*node_modules/*
let g:prettier#autoformat =0
let g:prettier#autoformat_config_present = 1
let g:prettier#quickfix_enabled =1
"autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.vue PrettierAsync


" use a different style
" valid values: 'default' (default), 'darker', 'pure'
let g:equinusocio_material_style = 'darker'

" less bright
" which means some colors will be modified by this formula:
" (r, g, b) -> ( max(r - less, 0), max(g - less, 0), max(b - less, 0) )
let g:equinusocio_material_less = 50

" make vertsplit invisible (visible by default) (default 0)
" if style == 'pure', then the vertsplit is always visible
let g:equinusocio_material_hide_vertsplit = 1

" parentheses improved (default 0)
" enabling this option with 'luochen1990/rainbow' installed is not encouraged
" because this option and 'luochen1990/rainbow' will registry conflicting events
" in summary:
" 1. no 'luochen1990/rainbow' installed, no parentheses improved: nothing to do (default 0)
" 2. no 'luochen1990/rainbow' installed, want built-in parentheses improved: set to 1
" 3. 'luochen1990/rainbow' installed: nothing to do (default 0)
let g:equinusocio_material_bracket_improved = 1

" use a better vertsplit char
set fillchars+=vert:│

"cursor for diferent  modes 
highlight Cursor guifg=white guibg=DARKSLATEGRAY
highlight iCursor guifg=white guibg=AQUAMARINE
"modos para terminais vte (gnome, xfce)
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"


nnoremap <c-x> :bp\|bd #<cr>
"nnoremap <leader>c :bp\|bd #<CR>
"noremap <leader>c :bd<CR>
"manhas com buffer 
":sb {bufname} : Open buffer bufname in a split
":sbn : Open next buffer in a split
":sbp : Open previous buffer in a split
":sba : Open all buffers in split windows


"defx-icons
set tabstop=2 softtabstop=2 expandtab shiftwidth=2


"autocompletion 
filetype plugin on
set omnifunc=syntaxcomplete#Complete
setlocal iskeyword+=-
augroup VimCSS3Syntax
  autocmd!
  autocmd FileType css setlocal iskeyword+=-
augroup END
autocmd BufReadPost *.tsx,*.ts,*.jsx,*.js :syntax sync fromstart
set syntax=styled-components


let g:jsx_ext_required = 1
let g:jsx_pragma_required = 1

" au FileType javascript setlocal formatprg=prettier
" au FileType javascript.jsx setlocal formatprg=prettier
" au FileType typescript setlocal formatprg=prettier\ — parser\ typescript

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
let g:tagalong_filetypes = ['html','js','javascript','jsx','jsx','ts','php']


set cursorline
hi CursorColumn ctermbg=1

"vim-anyfold
let g:anyfold_fold_comments=1
set foldlevel=1
hi Folded term=NONE cterm=NONE


let g:js_file_import_sort_after_insert = 1
let g:js_file_import_prompt_if_no_tag = 0
let g:js_file_import_use_fzf = 1
set wildignore+=*node_modules/**

nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>

" Close others
noremap <leader>ac :w <BAR> %bd <BAR> e# <BAR> bd# <CR>
nmap <silent> <F3> :CHADopen<CR>
" Show Tagbar
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1               " Auto focus on tagbar


"clear search selection
set nohlsearch

" Permite que o cursor acompanhe a rolagem da tela
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
nnoremap <F9> :so $MYVIMRC<cr>


iabbrev lenght length
iabbrev widht width
iabbrev heigth height

"configs para o youcompleteme
let g:ycm_autoclose_preview_window_after_completion=1

let g:rehash256 = 1

function! CleanExtraSpaces() "Function to clean unwanted spaces
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

set guifont="monoid"
let g:embark_termcolors=256
let NVIM_TUI_ENABLE_TRUE_COLOR=1
set fillchars+=vert:\


let g:highlightedyank_highlight_duration = 1000
highlight HighlightedyankRegion cterm=reverse gui=reverse

set nobackup
set nowritebackup
set noswapfile

" Update a buffer's contents on focus if it changed outside of Vim.
au FocusGained,BufEnter * :checktime 

" Unset paste on InsertLeave.
autocmd InsertLeave * silent! set nopaste

" Only show the cursor line in the active buffer.
augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
  augroup END

  " Customize fzf colors to match your color scheme.
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit',
  \ 'ctrl-y': {lines -> setreg('*', join(lines, "\n"))}}



"new config relationed coc
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif


"prettier 
let g:prettier#config#config_precedence = 'file-override'
let g:prettier#config#parser = ''
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
set listchars+=tab:→→\|,space:.,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨

" FZF and Rg settings for search
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"
if executable('rg')
  let g:rg_derive_root='true'
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif



let g:coc_disable_startup_warning = 1




nmap <leader>rn <Plug>(coc-rename)
nmap <silent> gf <Plug>(coc-definition)

"<Tab> para navegar e <Ctrl-Space> para abrir popup de sugestão:

" === Vim airline ==== "
" Customize vim airline per filetype
" 'nerdtree'  - Hide nerdtree status line
" 'list'      - Only show file type plus current line number out of total
let g:airline_filetype_overrides = {
  \ 'nerdtree': [ get(g:, 'NERDTreeStatusline', ''), '' ],
  \ 'list': [ '%y', '%l/%L'],
  \ }



function! s:custom_jarvis_colors()
  " coc.nvim color changes
  hi link CocErrorSign WarningMsg
  hi link CocWarningSign Number
  hi link CocInfoSign Type

  " Make background transparent for many things
  hi Normal ctermbg=NONE guibg=NONE
  hi NonText ctermbg=NONE guibg=NONE
  hi LineNr ctermfg=NONE guibg=NONE
  hi SignColumn ctermfg=NONE guibg=NONE
  hi StatusLine guifg=#16252b guibg=#6699CC
  hi StatusLineNC guifg=#16252b guibg=#16252b

  " Try to hide vertical spit and end of buffer symbol
  hi VertSplit gui=NONE guifg=#17252c guibg=#17252c
  hi EndOfBuffer ctermbg=NONE ctermfg=NONE guibg=#17252c guifg=#17252c

  " Customize NERDTree directory
  hi NERDTreeCWD guifg=#99c794

  " Make background color transparent for git changes
  hi SignifySignAdd guibg=NONE
  hi SignifySignDelete guibg=NONE
  hi SignifySignChange guibg=NONE

  " Highlight git change signs
  hi SignifySignAdd guifg=#99c794
  hi SignifySignDelete guifg=#ec5f67
  hi SignifySignChange guifg=#c594c5
endfunction

" Reload icons after init source
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

autocmd FileType apache setlocal commentstring=#\ %s

highlight Pmenu guibg=white guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none

" fzf-vim
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'Type'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Character'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:lightline = {
      \ 'colorscheme': 'moonfly',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ['close'] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
      \ }
let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'

" let g:lightline                  = {}
" let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
" let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
" let g:lightline.component_type   = {'buffers': 'tabsel'}


nnoremap <leader>v <cmd>CHADopen<cr>
"Add a hotkey to clear quickfix list:
nnoremap <leader>l <cmd>call setqflist([])<cr>

" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']


command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

"set guicursor=v-c-sm:block,n-i-ci-ve:ver25,r-cr-o:hor20
highlight Cursor guifg=white guibg=orange
highlight iCursor guifg=white guibg=white
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10
"type cursor neovim

autocmd OptionSet guicursor noautocmd set guicursor=
au VimEnter,VimResume * set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait185-blinkoff180-blinkon185

au VimLeave,VimSuspend * set guicursor=a:block-blinkon0


" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()



" configs for moonfly theme
let g:moonflyCursorColor = 1
let g:moonflyTerminalColors = 0
let g:moonflyUnderlineMatchParen = 1
let g:moonflyUndercurls = 0
let g:moonflyItalics = 0


"fold => zE zF za zd 
"zo	open current fold
" /* zO	recursively open current fold
"zzc	close current fold
"zC	recursively close current fold
"za	toggle current fold
"zA	recursively open/close current fold
"zm	reduce foldlevel by one
"zM	close all folds
"zr	increase foldlevel by one
"zR	open all folds
"
"
set wildoptions=pum
highlight Folded guibg=darkolivegreen1 guifg=black
highlight FoldColumn guibg=darkseagreen4 guifg=white
let g:markdown_folding = 1

