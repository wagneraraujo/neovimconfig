" colorscheme spacecamp_lite 
"
" colorscheme onehalflight
" colorscheme spacecamp
" colorscheme tokyonight
" colorscheme github_*
" colorscheme github_dark
" colorscheme night-owl

" colorscheme github_light
" colorscheme github_light_default
colorscheme github_dimmed
" colorscheme github_dark_default
" colorscheme github_dark

" colorscheme gotham256
set background=dark
syntax on
set termguicolors     " enable true colors support
let base16colorspace=256  " Access colors present in 256 colorspace
"gruvbox PaperColor challenger_deep edge github_light nightfly OceanicNext night-owl onedark  onehalfdark  ayu onehalflight hybrid_material 
"spacecamp_lite =dark
let g:airline_theme ='angr'  
"angr badwolf jellybeans murmur 'bubblegum'   'powerlineish  night-owl'
let g:one_allow_italics = 1 " I love italic for comments
let g:srcery_italic = 1
let g:srcery_italic = 1

set t_Co=256
set termguicolors     " enable true colors support
let base16colorspace=256  " Access colors present in 256 colorspace

if &term =~ '256color'
  set t_ut=
endif
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

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }


let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

let g:mta_use_matchparen_group = 1
highlight MatchTag ctermfg=black ctermbg=lightgreen guifg=black guibg=lightgreen


let g:tokyonight_style = 'storm' " available: night, storm



" Example config in VimScript
let g:github_function_style = "italic"
let g:github_sidebars = ["qf", "vista_kind", "terminal", "packer"]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
" let g:github_colors = [hint = "orange", error = "#ff0000"]

" Load the colorscheme
" colorscheme github_dark
" colorscheme github_light
" colorscheme github_light_default
" colorscheme github_dimmed
" colorscheme github_dark_default
" colorscheme github_dark

