""""""""""""""""""""""""""""""""""""""""
" Vim-Plug
""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug '~/.vim/custom'

Plug 'tomasr/molokai'
Plug 'noahfrederick/Hemisu'
Plug 'altercation/vim-colors-solarized'
Plug 'sjl/badwolf'

Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-repeat'

Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
"Plug 'scrooloose/nerdcommenter'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'godlygeek/tabular'
Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'hynek/vim-python-pep8-indent'
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-expand-region'
Plug 'nelstrom/vim-visual-star-search'

Plug 'kchmck/vim-coffee-script'
Plug 'chrisbra/csv.vim'
Plug 'groenewege/vim-less'
Plug 'mitsuhiko/vim-jinja'
Plug 'hdima/python-syntax'
Plug 'elzr/vim-json'
Plug 'evanmiller/nginx-vim-syntax'

Plug 'davidhalter/jedi-vim'

Plug 'tudorprodan/html_annoyance.vim'

Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-codefmtlib'
Plug 'google/vim-glaive'

call plug#end()

call glaive#Install()
Glaive codefmt plugin[mappings]


""""""""""""""""""""""""""""""""""""""""
" Defaults
""""""""""""""""""""""""""""""""""""""""
if !exists("z_disable_lambda_replacement_conceal")
    let z_disable_lambda_replacement_conceal = 1
endif

if !exists("g:has_patched_font")
    let g:has_patched_font = 0
endif


""""""""""""""""""""""""""""""""""""""""
" Filetype
""""""""""""""""""""""""""""""""""""""""
filetype indent on
filetype plugin indent on

au BufNewFile,BufRead *.mflex set filetype=json
au BufNewFile,BufRead *.flex set filetype=json
au BufNewFile,BufRead *.tbm set filetype=xml


""""""""""""""""""""""""""""""""""""""""
" Keymaps
""""""""""""""""""""""""""""""""""""""""
let mapleader = ","

for key in ['h', 'j', 'k', 'l']
    exe "nnoremap <C-" . key . "> <C-w>" . key
endfor

nnoremap <C-p> :bp<CR>
nnoremap <C-n> :bn<CR>

nnoremap <leader>bd :Bclose<CR>
nnoremap <leader>bD :Bclose!<CR>
nnoremap <leader>sw :SyntasticToggleWarnings<CR>
nnoremap <leader>w :w<CR>

vmap <leader>y "+y
" vmap <leader>d "+d
nmap <leader>p "+p
nmap <leader>P "+P
vmap <leader>p "+p
vmap <leader>P "+P

nmap <leader>h :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

set pastetoggle=<F9>

nnoremap <CR> :noh<CR><CR>

inoremap jj <Esc>
inoremap jk <Esc>

xmap ,c  <Plug>Commentary
nmap ,c  <Plug>Commentary
omap ,c  <Plug>Commentary
nmap ,cc <Plug>CommentaryLine
nmap cgc <Plug>ChangeCommentary
nmap ,cu <Plug>Commentary<Plug>Commentary

" increment in tmux
map <Leader>a <C-a>

" End Ex-Mode pain
nnoremap Q <nop>

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


if executable("par")
    set formatprg=par\ -w78
endif

syntax on

set hlsearch
set wildmenu
set wildmode=longest:full
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/*.pyc  " Linux/MacOSX
set completeopt=menu,preview,longest

set autoindent
set number
set nocompatible
set backspace=indent,eol,start
set history=50
set showcmd
set incsearch
set hidden
set nowrap
set laststatus=2
set shortmess=atTOI
set visualbell
set scrolloff=4
set splitbelow

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
set showbreak=↪

" fix slight delay after pressing ESC then O
" http://ksjoberg.com/vim-esckeys.html
"set noesckeys
"set timeout timeoutlen=1000 ttimeoutlen=100


"""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let g:NERDTreeHighlightCursorLine = 1
let g:NERDTreeIgnore = ['\.pyc$']

let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_quiet_warnings = 1
"let g:syntastic_quiet_messages = {'level': 'warnings'}
"
let python_highlight_all = 1
let python_version_2 = 1

let g:jedi#show_call_signatures = 0
let g:jedi#completions_enabled = 0
let g:jedi#goto_assignments_command = '<leader>gg'
let g:jedi#smart_auto_mappings = 0
" let g:jedi#goto_command = '<leader>d'
" let g:jedi#rename_command = '<leader>r'
" let g:jedi#usages_command = '<leader>n'

let g:user_emmet_settings = { "indentation": "    " }
let g:user_emmet_expandabbr_key = "<C-y><Tab>"

let g:syntastic_python_checkers = ["flake8"]
let g:syntastic_python_flake8_args = "--ignore=E301,E302,E303,E501,W391,E122,E127"
let g:syntastic_c_checkers = []
let g:syntastic_cpp_checkers = []

let g:airline_theme = "powerlineish"
let g:airline_powerline_fonts = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#virtualenv#enabled = 0
let g:airline#extensions#branch#enabled = 0
let g:airline#extensions#whitespace#enabled = 0

autocmd FileType javascript let b:codefmt_formatter = 'js-beautify'

" Tell Molokai in the terminal to use advance colours
let g:rehash256=1


"""""""""""""""""""""""""""""""""""""""""""""
" Functions
"""""""""""""""""""""""""""""""""""""""""""""

" Commenting this so people can use my vim
" for prefix in ['i', 'n', 'v']
"     for key in ['<Up>', '<Down>', '<Left>', '<Right>']
"         exe prefix . "noremap " . key . " <Nop>"
"     endfor
" endfor

function! s:WhitespaceCleanup()
    :%s/\t/    /ge
    :%s/ \+$//ge
endfunction

function! s:FixPythonCommentWhitespace()
    :%s/^\(\s*\)#\([^ ]\)/\1# \2
endfunction

function! s:SyntasticToggleWarnings()
    if has_key(g:syntastic_quiet_messages, "level")
        unlet g:syntastic_quiet_messages.level
        echo "Syntastic Warnings ON"
    else
        let g:syntastic_quiet_messages.level = "warnings"
        echo "Syntastic Warnings OFF"
    endif
endfunction

command! -nargs=0 WhitespaceCleanup call s:WhitespaceCleanup()
command! -nargs=0 SyntasticToggleWarnings call s:SyntasticToggleWarnings()
command! -nargs=0 FixPythonCommentWhitespace call s:FixPythonCommentWhitespace()
command! -nargs=0 Fmt FormatCode

cmap w!! %!sudo tee > /dev/null %


""""""""""""""""""""""""""""""""""""""""
" Matcher
""""""""""""""""""""""""""""""""""""""""

" let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files . -co --exclude-standard']

if exists("g:path_to_matcher")
    let g:ctrlp_match_func = { 'match': 'GoodMatch' }
endif

function! GoodMatch(items, str, limit, mmode, ispath, crfile, regex)

  " Create a cache file if not yet exists
  let cachefile = ctrlp#utils#cachedir().'/matcher.cache'
  if !( filereadable(cachefile) && a:items == readfile(cachefile) )
    call writefile(a:items, cachefile)
  endif
  if !filereadable(cachefile)
    return []
  endif

  " a:mmode is currently ignored. In the future, we should probably do
  " something about that. the matcher behaves like "full-line".
  let cmd = g:path_to_matcher.' --limit '.a:limit.' --manifest '.cachefile.' '
  if !( exists('g:ctrlp_dotfiles') && g:ctrlp_dotfiles )
    let cmd = cmd.'--no-dotfiles '
  endif
  let cmd = cmd.a:str

  return split(system(cmd), "\n")

endfunction


""""""""""""""""""""""""""""""""""""""""
" Bind keypad numbers
""""""""""""""""""""""""""""""""""""""""
inoremap <Esc>Oq 1
inoremap <Esc>Or 2
inoremap <Esc>Os 3
inoremap <Esc>Ot 4
inoremap <Esc>Ou 5
inoremap <Esc>Ov 6
inoremap <Esc>Ow 7
inoremap <Esc>Ox 8
inoremap <Esc>Oy 9
inoremap <Esc>Op 0
inoremap <Esc>On .
inoremap <Esc>OQ /
inoremap <Esc>OR *
inoremap <Esc>Ol +
inoremap <Esc>OS -


