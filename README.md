# Deprecated, moved to dotfiles

`~/.vimrc`:

```vim
if has("gui")
    set guifont=Monaco\ for\ Powerline
    set fillchars=vert:≀
endif

set t_Co=256
set background=dark

let g:has_patched_font = 1
let z_disable_lambda_replacement_conceal = 1

source ~/.vim/vimrc

colorscheme molokai
```

Run `PlugInstall`.


Syntax checkers:

<table>
    <tr>
        <td>CoffeeScript</td>
        <td>coffee</td>
    </tr>
    <tr>
        <td>CSS</td>
        <td>csslint</td>
    </tr>
    <tr>
        <td>HTML</td>
        <td>tidy</td>
    </tr>
    <tr>
        <td>JavaScript</td>
        <td>gjslint, jslint, jsl, jshint</td>
    </tr>
    <tr>
        <td>JSON</td>
        <td>jsonlint, jsonval</td>
    </tr>
    <tr>
        <td>PHP</td>
        <td>php</td>
    </tr>
    <tr>
        <td>Python</td>
        <td>flake8, pyflakes, pylint</td>
    </tr>
    <tr>
        <td>XML</td>
        <td>xmllint</td>
    </tr>
    <tr>
        <td>XSLT</td>
        <td>xmllint</td>
    </tr>
    <tr>
        <td>YAML</td>
        <td>js-yaml</td>
    </tr>
</table>
