let g:pathogen_disabled = ["yankring"]

if !has('gui_running')
    call add(g:pathogen_disabled, 'csscolor')
endif

runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

if has('mouse')
    set mouse=a
endif

syntax on
set hlsearch

filetype indent on
filetype plugin indent on

if executable("par")
    set formatprg=par\ -w78
endif

set autoindent
set smartindent
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

nnoremap <C-p> :MBEbp<CR>
nnoremap <C-n> :MBEbn<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :FufFile **/<CR>
nnoremap <C-f> :CommandT<CR>
nnoremap <C-b> :FufBuffer<CR>
nnoremap <leader>bd :Bclose<CR>
nnoremap <leader>bD :Bclose!<CR>
nnoremap <leader>swq :let g:syntastic_quiet_warnings=1<CR>
nnoremap <leader>swv :let g:syntastic_quiet_warnings=0<CR>

cmap w!! %!sudo tee > /dev/null %

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
