syntax on

" so ~/.vim/plugins.vim
" so ~/.vim/plugin-config.vim
" so ~/.vim/autoclose.vimV

"=== plugins ===
so ~/neovimconfig/plugins.vim
" so ~/neovimconfig/config/autoclose.vim

" === theme ===
so ~/neovimconfig/config/theme.vim

" === basic config ===
so ~/neovimconfig/config/basic.vim
" source ~/neovimconfig/lua/lsp-config.lua


" == new configs plugins ==
let g:cursorhold_updatetime = 100
let g:rust_clip_command = 'xclip -selection clipboard'


" " IndentLine
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = '|'
let g:indentLine_faster = 1
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2




" Display options
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
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite,.git
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
" fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'

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
let g:ale_fixers = {
      \   '*': ['remove_trailing_lines', 'trim_whitespace'],
      \   'javascript': ['eslint'],
      \}
let b:ale_fixers = ['prettier', 'eslint']
let g:ale_linter_aliases = {'vue': ['vue', 'javascript','typescript']}
let g:ale_linters = {'vue': ['eslint', 'vls']}
let g:ale_disable_lsp = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:airline#extensions#ale#enabled = 1

" Tagbar
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" Disable visualbell

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
" noremap <leader>z :bp<CR>
" noremap <leader>q :bp<CR>
" noremap <leader>x :bn<CR>
" noremap <leader>w :bn<CR>
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
  let g:airline#extensions#branch#prefix     = '➥' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = ''
  let g:airline_symbols.linenr    = '✒'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = ''
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = '❯'
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
  let g:airline_symbols.linenr = ''
endif
let g:airline#extensions#tabline#formatter = 'jsformatter'


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
      \ 'tsx' : 1,
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
autocmd FileType html,css,php,js,tsx,jsx  EmmetInstall
"imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

let g:user_emmet_install_global =1
"autocmd FileType html,css,ejs,jsx,js, EmmetInstal
let g:user_emmet_leader_key=','
let g:user_emmet_settings = {
      \  'javascript' : {
        \      'extends' : 'tsx',
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
      \ 'tsx' : 1,
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
highlight MatchTag ctermfg=black ctermbg=lightgreen guifg=black guibg=lightblue
let g:mta_filetypes = {
      \ 'html' : 1,
      \ 'xhtml' : 1,
      \ 'xml' : 1,
      \ 'jinja' : 1,
      \ 'js' : 1,
      \ 'jsx' : 1,
      \ 'ejs' : 1,
      \}

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
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.sass,*.tsx,*.php,*.ejs,*.css,*.less,*.json,*.vue PrettierAsync


" use a different style
" valid values: 'default' (default), 'darker', 'pure'
let g:equinusocio_material_style = 'default'

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
let g:tagalong_filetypes = ['html','js','javascript','jsx','tsx','ts','php','vue','javascriptreact','typescriptreact']


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

" set guifont="monoid"
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
set updatetime=200
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
" "renomar coc
nmap <leader>rn <Plug>(coc-rename)
" " Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" " Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
" " GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


"prettier
let g:prettier#config#config_precedence = 'file-override'
let g:prettier#config#parser = ''
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}
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
      \ 'colorscheme': 'angr',
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
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
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

" preview pageoc
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



"fold => zE zF za zd
"zo open current fold
" /* zO recursively open current fold
"zzc  close current fold
"zC recursively close current fold
"za toggle current fold
"zA recursively open/close current fold
"zm reduce foldlevel by one
"zM close all folds
"zr increase foldlevel by one
"zR open all folds
"
"
set wildoptions=pum
highlight Folded guibg=darkolivegreen1 guifg=black
highlight FoldColumn guibg=darkseagreen4 guifg=white
let g:markdown_folding = 0

"goyo config
function! s:goyo_enter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
  " ...
endfunction

function! s:goyo_leave()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

let g:vim_vue_plugin_config = {
      \'syntax': {
        \   'template': ['html'],
        \   'script': ['javascript'],
        \   'style': ['css'],
        \},
        \'full_syntax': [],
        \'initial_indent': [],
        \'attribute': 0,
        \'keyword': 0,
        \'foldexpr': 0,
        \'debug': 0,
        \}


set wildignore+=**/node_modules/**
set wildignore+=**/.git/**

" erro -> eslint not approved or deniet
" CocCommand eslint.showOutputChannel
"
"disable ctrl +z close neovim
nnoremap <c-z> <nop>

"====================== coc config ======================================

nmap <leader>rn <Plug>(coc-rename)
let g:coc_disable_startup_warning = 1
set updatetime=300
set shortmess+=c
set cmdheight=2
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   elseif (coc#rpc#ready())
"     call CocActionAsync('doHover')
"   else
"     execute '!' . &keywordprg . " " . expand('<cword>')
"   endif
" endfunction
" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')
" " Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

" augroup mygroup
"   autocmd!
"   " Setup formatexpr specified filetype(s).
"   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"   " Update signature help on jump placeholder.
"   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" augroup end

" " Add `:Format` command to format current buffer.
" command! -nargs=0 Format :call CocAction('format')

" " Add `:Fold` command to fold current buffer.
" command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" " Add `:OR` command for organize imports of the current buffer.
" command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

autocmd BufNewFile,BufRead *.ejs set filetype=html
autocmd BufNewFile,BufRead *._ejs set filetype=html


" resize current buffer by +/- 5

nnoremap <silent> <Leader>= :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>0 :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>9 :exe "vertical resize " . (winwidth(0) * 2/3)<CR>


let g:syntastic_auto_jump = 1

noautocmd


map q <Nop>

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

"Most projects use ESLint, Prettier, or both. To get started with those using Coc, we just need to install neoclide/coc-eslint and neoclide/coc-prettier. I
"
"
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif


set redrawtime=20000
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let g:NERDTreeIgnore = ['^node_modules$'] " ignore node_modules to increase load speed

" NERDTree Syntax Highlight
" " Enables folder icon highlighting using exact match
let g:NERDTreeHighlightFolders = 1
" " Highlights the folder name
let g:NERDTreeHighlightFoldersFullName = 1
" " Color customization
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'
" " This line is needed to avoid error
let g:NERDTreeExtensionHighlightColor = {}
" " Sets the color of css files to blue
let g:NERDTreeExtensionHighlightColor['css'] = s:blue
" " This line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor = {}
" " Sets the color for .gitignore files
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange
" " This line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor = {}
" " Sets the color for files ending with _spec.rb
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red
" " Sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFolderSymbolColor = s:beige
" " Sets the color for files that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue

" NERDTree Git Plugin
let g:NERDTreeGitStatusIndicat = {
      \ "Modified"  : "✹",
      \ "Staged"    : "✚",
      \ "Untracked" : "✭",
      \ "Renamed"   : "➜",
      \ "Unmerged"  : "═",
      \ "Deleted"   : "✖",
      \ "Dirty"     : "✗",
      \ "Clean"     : "✔︎",
      \ 'Ignored'   : '☒',
      \ "Unknown"   : "?"
      \ }

" Nerd Commenter
" " Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" " Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" " Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" " Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
" " Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" " Map ++ to call NERD Commenter and use iTerm key bindings
" " to bind Ctmd+/ to ++


" The Silver Searcher
if executable('ag')
  " " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif


"config lsp for neovim with lua

"tag
let g:vim_matchtag_enable_by_default = 0
let g:vim_matchtag_files = '*.html,*.xml,*.js,*.jsx,*.tsx,*.vue,*.svelte,*.jsp'
highlight link matchTag Search
highlight link matchTag MatchParen
highlight matchTag gui=reverse

highlight link matchTagError Todo
nmap <F8> :TagbarToggle<CR>


" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

set re=0


" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,tsx,jsx'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx,tsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
      \ 'typescript.tsx': 'jsxRegion,tsxRegion',
      \ 'javascript.jsx': 'jsxRegion',
      \ 'typescriptreact': 'jsxRegion,tsxRegion',
      \ 'javascriptreact': 'jsxRegion',
      \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'


" These commands will navigate through buffers in order regardless of which mode you are using
" e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
" nnoremap <silent>:BufferLineCycleNext<C-Right>
" nnoremap <silent>b] :BufferLineCyclePrev<CR>
" map <C-m> :BufferLineCycleNext<CR>
" map <C-b> :BufferLineCyclePrev<CR>
map <C-f> :Neoformat<CR>






" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1



" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1
let g:neoformat_run_all_formatters = 1

" let g:nvim_tree_disable_default_keybindings = 1
g:cursorword_highlight


"vim-anyfold
"zo, zO, zc, za
" [[ and ]]
" ]k and [j to navigate to the end of the previous block
"
filetype plugin indent on " required
syntax on                 " required

autocmd Filetype * AnyFoldActivate               " activate for all filetypes
" or
autocmd Filetype <your-filetype> AnyFoldActivate " activate for a specific filetype

set foldlevel=0  " close all folds
" or
set foldlevel=99 " Open all folds


" vinresizer
"ctrl + e => h j k l
"enteder or q cancel e E
let g:winresizer_gui_enable = 1

" rust
let g:rust_clip_command = 'xclip -selection clipboard'
set signcolumn=number
set conceallevel=1
set nornu
set shortmess+=c

let g:cursorhold_updatetime = 100




let g:rust_clip_command = 'xclip -selection clipboard'

let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


nnoremap <leader>w :BufferNext<CR>
nnoremap <leader>z :BufferPrev<CR>



" noremap <leader>z :bp<CR>
" noremap <leader>q :bp<CR>
" noremap <leader>x :bn<CR>
" noremap <leader>w :bn<CR>
"nnoremap <C-Right>:bn <CR>
"nnorema <C-Left>:bp <CR>
"

" NOTE: If barbar's option dict isn't created yet, create it
let bufferline = get(g:, 'bufferline', {})

" Enable/disable animations
let bufferline.animation = v:true

" Enable/disable auto-hiding the tab bar when there is a single buffer
let bufferline.auto_hide = v:false

" Enable/disable current/total tabpages indicator (top right corner)
let bufferline.tabpages = v:true

" Enable/disable close button
let bufferline.closable = v:true

" Enables/disable clickable tabs
"  - left-click: go to buffer
"  - middle-click: delete buffer
let bufferline.clickable = v:true

" Excludes buffers from the tabline
let bufferline.exclude_ft = ['javascript']
let bufferline.exclude_name = ['package.json']

" Enable/disable icons
" if set to 'buffer_number', will show buffer number in the tabline
" if set to 'numbers', will show buffer index in the tabline
" if set to 'both', will show buffer index and icons in the tabline
" if set to 'buffer_number_with_icon', will show buffer number and icons in the tabline
let bufferline.icons = v:true

" Sets the icon's highlight group.
" If false, will use nvim-web-devicons colors
let bufferline.icon_custom_colors = v:false

" Configure icons on the bufferline.
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = '車'

" If true, new buffers will be inserted at the start/end of the list.
" Default is to insert after current buffer.
let bufferline.insert_at_start = v:false
let bufferline.insert_at_end = v:false

" Sets the maximum padding width with which to surround each tab.
let bufferline.maximum_padding = 4

" Sets the maximum buffer name length.
let bufferline.maximum_length = 30

" If set, the letters for each buffer in buffer-pick mode will be
" assigned based on their name. Otherwise or in case all letters are
" already assigned, the behavior is to assign letters in order of
" usability (see order below)
let bufferline.semantic_letters = v:true

" New buffer letters are assigned in this order. This order is
" optimal for the qwerty keyboard layout but might need adjustement
" for other layouts.
let bufferline.letters =
  \ 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'

" Sets the name of unnamed buffers. By default format is "[Buffer X]"
" where X is the buffer number. But only a static string is accepted here.
let bufferline.no_name_title = v:null



