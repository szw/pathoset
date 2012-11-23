vimbundle
=========

Installation and usage
----------------------

    mkdir ~/.vim
    cd ~/.vim
    curl -so vimbundle https://raw.github.com/szw/vimbundle/master/vimbundle
    chmod +x vimbundle
    ~/.vimbundle

If you want to perform updates automatically in given time intervals grab the `v` script:

    curl -so v https://raw.github.com/szw/vimbundle/master/v
    chmod +x v

Then edit it to alter default settings (if necessary). The default interval is set to 4h. The default
vim files folder is set to `~/.vim`, and the default vim executable is set to `vim`. Next, place the
`v` script in your path, i.e. `/usr/local/bin`.

Now, instead of running `vim` use the `v` script.
