""""""""""""""""""""""""""""""""""""""""
" Pathogen
""""""""""""""""""""""""""""""""""""""""
let g:pathogen_disabled = ["yankring", "fuzzyfinder", "l9", "minibufexpl", "powerline", "command_t"]

if !has('gui_running')
    call add(g:pathogen_disabled, 'csscolor')
endif

runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

filetype indent on
filetype plugin indent on


""""""""""""""""""""""""""""""""""""""""
" Keymaps
""""""""""""""""""""""""""""""""""""""""
for key in ['h', 'j', 'k', 'l']
    exe "nnoremap <C-" . key . "> <C-w>" . key
endfor

"nnoremap <C-p> :MBEbp<CR>
"nnoremap <C-n> :MBEbn<CR>
nnoremap <C-p> :bp<CR>
nnoremap <C-n> :bn<CR>

nnoremap <C-t> :NERDTreeToggle<CR>

"nnoremap <C-f> :FufFile **/<CR>
"nnoremap <C-b> :FufBuffer<CR>

"nnoremap <C-f> :CommandT<CR>
"nnoremap <C-b> :CommandTBuffer<CR>

"let g:ctrlp_map = "<C-f>"

nnoremap <leader>bd :Bclose<CR>
nnoremap <leader>bD :Bclose!<CR>

nnoremap <leader>sw :SyntasticToggleWarnings<CR>
"nnoremap <leader>swq :let g:syntastic_quiet_warnings=1<CR>
"nnoremap <leader>swv :let g:syntastic_quiet_warnings=0<CR>

inoremap jj <Esc>
inoremap jk <Esc>

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/*.pyc  " Linux/MacOSX
let g:ctrlp_map = "<C-f>"
nnoremap <C-b> :CtrlPBuffer<CR>
let g:ctrlp_prompt_mappings = {
    \ 'PrtBS()':              ['<bs>', '<c-]>'],
    \ 'PrtDelete()':          ['<del>'],
    \ 'PrtDeleteWord()':      ['<c-w>'],
    \ 'PrtClear()':           ['<c-u>'],
    \ 'PrtSelectMove("j")':   ['<c-n>', '<c-j>'],
    \ 'PrtSelectMove("k")':   ['<c-p>', '<c-k>'],
    \ 'PrtSelectMove("t")':   ['<Home>', '<kHome>'],
    \ 'PrtSelectMove("b")':   ['<End>', '<kEnd>'],
    \ 'PrtSelectMove("u")':   ['<PageUp>', '<kPageUp>'],
    \ 'PrtSelectMove("d")':   ['<PageDown>', '<kPageDown>'],
    \ 'PrtHistory(-1)':       [],
    \ 'PrtHistory(1)':        [],
    \ 'AcceptSelection("e")': ['<cr>', '<2-LeftMouse>'],
    \ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-s>'],
    \ 'AcceptSelection("t")': ['<c-t>'],
    \ 'AcceptSelection("v")': ['<c-v>', '<RightMouse>'],
    \ 'ToggleFocus()':        ['<s-tab>'],
    \ 'ToggleRegex()':        ['<c-r>'],
    \ 'ToggleByFname()':      ['<c-d>'],
    \ 'ToggleType(1)':        ['<c-f>'],
    \ 'ToggleType(-1)':       ['<c-b>'],
    \ 'PrtExpandDir()':       ['<tab>'],
    \ 'PrtInsert("c")':       ['<MiddleMouse>', '<insert>'],
    \ 'PrtInsert()':          ['<c-\>'],
    \ 'PrtCurStart()':        ['<c-a>'],
    \ 'PrtCurEnd()':          ['<c-e>'],
    \ 'PrtCurLeft()':         ['<c-h>', '<c-^>'],
    \ 'PrtCurRight()':        ['<c-l>',],
    \ 'PrtClearCache()':      ['<F5>'],
    \ 'PrtDeleteEnt()':       ['<F7>'],
    \ 'CreateNewFile()':      ['<c-y>'],
    \ 'MarkToOpen()':         ['<c-z>'],
    \ 'OpenMulti()':          ['<c-o>'],
    \ 'PrtExit()':            ['<esc>', '<c-c>', '<c-g>'],
    \ }


""""""""""""""""""""""""""""""""""""""""
" Misc
""""""""""""""""""""""""""""""""""""""""
if has('mouse')
    set mouse=a
endif

syntax on
set hlsearch

if executable("par")
    set formatprg=par\ -w78
endif

set autoindent
set number

set wildmenu
set wildmode=longest:full

set nocompatible
set backspace=indent,eol,start
set history=50
set showcmd
set incsearch
set hidden
set nowrap

set completeopt=menu,preview,longest

"set backupdir=~/.vimsaves
"set directory=~/.vimsaves

set nobackup
set noswapfile

set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=R
set guioptions-=l
set guioptions-=r

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set shortmess=atTOI


"""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""
let g:FuzzyFinderOptions = { 'Base':{}, 'Buffer':{}, 'File':{}, 'Dir':{}, 'MruFile':{}, 'MruCmd':{}, 'Bookmark':{}, 'Tag':{}, 'TaggedFile':{} }
let g:FuzzyFinderOptions.Base.trim_length = 170
let g:FuzzyFinderOptions.Base.ignore_case = 1
let g:FuzzyFinderOptions.Base.abbrev_map  = {}
let g:FuzzyFinderOptions.Base.dont_change_cmdheight = 0

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

let g:NERDTreeWinPos = "right"
let g:NERDTreeHighlightCursorLine = 1
let g:NERDTreeIgnore = ['\.pyc$']

let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_quiet_warnings = 1

let python_highlight_all = 1

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:user_zen_settings = { "indentation": "    " }


"""""""""""""""""""""""""""""""""""""""""""""
" Functions
"""""""""""""""""""""""""""""""""""""""""""""
for prefix in ['i', 'n', 'v']
    for key in ['<Up>', '<Down>', '<Left>', '<Right>']
        exe prefix . "noremap " . key . " <Nop>"
    endfor
endfor

function! s:WhitespaceCleanup()
    :%s/\t/    /ge
    :%s/ \+$//ge
endfunction

function! s:SyntasticToggleWarnings()
    :let g:syntastic_quiet_warnings=!g:syntastic_quiet_warnings
    :echo "syntastic_quiet_warnings = " . g:syntastic_quiet_warnings
endfunction

command! -nargs=0 WhitespaceCleanup call s:WhitespaceCleanup()
command! -nargs=0 SyntasticToggleWarnings call s:SyntasticToggleWarnings()

cmap w!! %!sudo tee > /dev/null %


""""""""""""""""""""""""""""""""""""""""
" Bind keypad numbers
""""""""""""""""""""""""""""""""""""""""
:inoremap <Esc>Oq 1
:inoremap <Esc>Or 2
:inoremap <Esc>Os 3
:inoremap <Esc>Ot 4
:inoremap <Esc>Ou 5
:inoremap <Esc>Ov 6
:inoremap <Esc>Ow 7
:inoremap <Esc>Ox 8
:inoremap <Esc>Oy 9
:inoremap <Esc>Op 0
:inoremap <Esc>On .
:inoremap <Esc>OQ /
:inoremap <Esc>OR *
:inoremap <Esc>Ol +
:inoremap <Esc>OS -
