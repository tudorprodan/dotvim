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

Run:

```bash
git clone git@github.com:tudorprodan/dotvim.git .vim
cd .vim
git submodule init
git submodule update
cd bundle/command_t
rake make
cd ../..
```

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
