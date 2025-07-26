""""""""""""""""""""""""""""""""""""""""
" Vim-Plug
""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug '~/.vim/custom'

Plug 'tomasr/molokai'

Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

if 1
    Plug 'ctrlpvim/ctrlp.vim'
else
    Plug '/home/tudor/.fzf'
    Plug 'junegunn/fzf.vim'
endif

Plug 'itchyny/lightline.vim'

" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
Plug 'hynek/vim-python-pep8-indent'
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-expand-region'
Plug 'nelstrom/vim-visual-star-search'
Plug 'gorkunov/smartpairs.vim'
" Plug 'godlygeek/tabular'
" Plug 'mileszs/ack.vim'
" Plug 'rking/ag.vim'
" Plug 'Lokaltog/vim-easymotion'
" Plug 'justinmk/vim-sneak'

" Plug 'chrisbra/csv.vim', { 'for': 'csv' }
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'mitsuhiko/vim-jinja', { 'for': 'html' }
Plug 'hdima/python-syntax', { 'for': 'python' }
Plug 'elzr/vim-json', { 'for': 'json' }

" Plug 'davidhalter/jedi-vim'

Plug 'tudorprodan/html_annoyance.vim', { 'for': 'html' }

Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'

Plug 'jreybert/vimagit'

Plug 'rust-lang/rust.vim', { 'for': 'rust' }
" Plug 'racer-rust/vim-racer', { 'for': 'rust' }

let _use_lsp = 0
if _use_lsp
    Plug 'neovim/nvim-lspconfig'
else
    Plug 'neoclide/coc.nvim'
endif


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

augroup filetypedetect
    au BufNewFile,BufRead *.flex,*.mflex set filetype=json
    au BufNewFile,BufRead *.flex set filetype=json
    au BufNewFile,BufRead *.tbm set filetype=xml
augroup END

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

" nmap <leader>h :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

set pastetoggle=<F9>

nnoremap <CR> :noh<CR><CR>

inoremap jj <Esc>
inoremap jk <Esc>
inoremap <C-c> <Esc>

" Keep text selected while indenting
" vnoremap < <gv
" vnoremap > >gv

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

if 1
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
else
    " fzf
    nnoremap <C-f> :Files<CR>
    nnoremap <C-b> :Buffers<CR>
endif

" Rust
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap <leader>d <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

if _use_lsp
    " LSP
lua << EOF
require 'lspconfig'.pyls.setup{}
EOF
    nnoremap <silent> <leader>d <cmd>lua vim.lsp.buf.definition()<CR>
    nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
    nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
    nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
    nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
    nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
    nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
    nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
    nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
    let _lsp_statusline_part = []
    set omnifunc=v:lua.vim.lsp.omnifunc
    " buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
else
    " Coc
    nmap <silent> <leader>d <Plug>(coc-definition)
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)
    nmap <silent> [g <Plug>(coc-diagnostic-prev)
    nmap <silent> ]g <Plug>(coc-diagnostic-next)
    nmap <leader>rn <Plug>(coc-rename)
    let _lsp_statusline_part = ['cocstatus']
endif


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
set nonumber
set nocompatible
set backspace=indent,eol,start
set history=50
set showcmd
set incsearch
set hidden
set nowrap
set laststatus=2
set shortmess=atTOI
set novisualbell
set scrolloff=4
set splitbelow
set wrapscan
set autoread

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

" Don't try to look in included files
set complete-=i

" fix slight delay after pressing ESC then O
" http://ksjoberg.com/vim-esckeys.html
"set noesckeys
"set timeout timeoutlen=1000 ttimeoutlen=100

" Don't clear using the current background colour
set t_ut=

" Coc github page: You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

"""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let g:NERDTreeHighlightCursorLine = 1
let g:NERDTreeIgnore = ['\.pyc$', '__pycache__$']

let python_highlight_all = 1
" let python_version_2 = 1

let g:jedi#completions_enabled = 0
let g:jedi#show_call_signatures = 0
let g:jedi#smart_auto_mappings = 0

let g:jedi#goto_assignments_command = '<leader>gg'
" let g:jedi#goto_command = '<leader>d'
" let g:jedi#rename_command = '<leader>r'
" let g:jedi#usages_command = '<leader>n'

let g:user_emmet_settings = { "indentation": "    " }
let g:user_emmet_expandabbr_key = "<C-y><Tab>"

let g:syntastic_python_checkers = ["flake8"]
let g:syntastic_python_flake8_args = "--ignore=E301,E302,E303,E501,W391,E122,E127"
let g:syntastic_c_checkers = []
let g:syntastic_cpp_checkers = []
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 1

let g:netrw_liststyle = 3
let g:netrw_fastbrowse = 0
autocmd FileType netrw setl bufhidden=wipe



let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              _lsp_statusline_part +
      \              [ 'linter_warnings', 'linter_errors', 'linter_ok' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))'
      \ },
      \ 'component_expand': {
      \   'linter_warnings': 'LightlineLinterWarnings',
      \   'linter_errors': 'LightlineLinterErrors',
      \ },
      \ 'component_type': {
      \   'linter_warnings': 'warning',
      \   'linter_errors': 'error',
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }


autocmd FileType javascript let b:codefmt_formatter = 'js-beautify'
autocmd FileType python let b:codefmt_formatter = 'autopep8'

" Tell Molokai in the terminal to use advance colours
let g:rehash256 = 1

let g:vim_json_syntax_conceal = 0

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


command Exec set splitbelow | vnew | set filetype=sh | read !sh #
