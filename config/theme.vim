" colorscheme spacecamp_lite 
colorscheme PaperColor
" colorscheme spacecamp_lite
set background=light
syntax on
set termguicolors     " enable true colors support
let base16colorspace=256  " Access colors present in 256 colorspace
"gruvbox PaperColor challenger_deep edge github_light nightfly OceanicNext night-owl onedark  onehalfdark  ayu onehalflight hybrid_material 
"spacecamp_lite =dark
let g:airline_theme ='murmur'  " jellybeans murmur 'bubblegum'   'powerlineish'
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
