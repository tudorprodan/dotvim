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
" Pathogen
""""""""""""""""""""""""""""""""""""""""
let g:pathogen_disabled = ["yankring", "minibufexpl", "command_t", "numbers", "powerline", "YouCompleteMe", "fugitive", "nerdcommenter"]

if !has("gui_running")
    call add(g:pathogen_disabled, "csscolor")
endif

if g:has_patched_font
    call add(g:pathogen_disabled, "statline")
else
    call add(g:pathogen_disabled, "airline")
endif



""""""""""""""""""""""""""""""""""""""""
" Filetype
""""""""""""""""""""""""""""""""""""""""
filetype indent on
filetype plugin indent on

au BufNewFile,BufRead *.mflex set filetype=json

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
"nnoremap <leader>swq :let g:syntastic_quiet_warnings=1<CR>
"nnoremap <leader>swv :let g:syntastic_quiet_warnings=0<CR>

"nmap <leader>p <Plug>yankstack_substitute_older_paste
"xmap <leader>p <Plug>yankstack_substitute_older_paste
"imap <leader>p <Plug>yankstack_substitute_older_paste
"nmap <leader>n <Plug>yankstack_substitute_newer_paste
"xmap <leader>n <Plug>yankstack_substitute_newer_paste
"imap <leader>n <Plug>yankstack_substitute_newer_paste

"nmap <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
nmap <leader>h :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

nnoremap <CR> :noh<CR><CR>

inoremap jj <Esc>
inoremap jk <Esc>

nnoremap <leader>w :w<CR>

vmap <Leader>y "+y
" vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

xmap ,c  <Plug>Commentary
nmap ,c  <Plug>Commentary
omap ,c  <Plug>Commentary
nmap ,cc <Plug>CommentaryLine
nmap cgc <Plug>ChangeCommentary
nmap ,cu <Plug>Commentary<Plug>Commentary


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
set laststatus=2

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
set showbreak=↪

set shortmess=atTOI

set visualbell

" fix slight delay after pressing ESC then O
" http://ksjoberg.com/vim-esckeys.html
" set noesckeys
"set timeout timeoutlen=1000 ttimeoutlen=100
"
set scrolloff=4

set splitbelow


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
"let g:syntastic_quiet_warnings = 1
let g:syntastic_quiet_messages = {'level': 'warnings'}

let g:statline_fugitive=1
let g:statline_filename_relative=1

let python_highlight_all = 1
let python_version_2 = 1

let g:NERDCustomDelimiters = { 'python': { 'left': '# ' } }

let g:user_emmet_settings = { "indentation": "    " }
let g:user_emmet_expandabbr_key = "<C-y><Tab>"

let g:Powerline_symbols = "fancy"

let g:yankstack_map_keys = 0

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

" let g:jedi#show_call_signatures = 1
let g:jedi#goto_assignments_command = '<leader>gg'
" let g:jedi#goto_command = '<leader>d'
" let g:jedi#rename_command = '<leader>r'
" let g:jedi#usages_command = '<leader>n'


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

if exists("g:path_to_matcher")
    let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files . -co --exclude-standard']
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


""""""""""""""""""""""""""""""""""""""""
" End Ex-Mode pain
""""""""""""""""""""""""""""""""""""""""
nnoremap Q <nop>


""""""""""""""""""""""""""""""""""""""""
" Pathogen infecting
""""""""""""""""""""""""""""""""""""""""
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()
