Add to ~/.vimrc:


```vim
source /Users/tudor/.vim/vimrc

if has("gui")
    set guifont=Monaco:h14
"    colorscheme molokai
    colorscheme sunburst
endif

let z_disable_lambda_replacement_conceal=1
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
```
