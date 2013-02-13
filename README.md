vimbundle
=========

Installation and usage
----------------------

    mkdir ~/.vim
    cd ~/.vim
    curl -so vimbundle https://raw.github.com/szw/vimbundle/master/vimbundle
    chmod +x vimbundle
    ~/.vimbundle

If you want to perform updates automatically in given time intervals grab the `vim` script:

    curl -so v https://raw.github.com/szw/vimbundle/master/vim
    chmod +x vim

And move it e.g. into your .local/bin directory (assuming it is on your `$PATH` before orignal `vim`
binary).

    mv vim ~/.local/bin

Then edit it to alter default settings (if necessary). The default interval is set to 4h. The
default vim files folder is set to `~/.vim`, and the default vim executable is set depending on your
OS.

The OSX variant assumes you are using TMux and you have the
[reattach-to-user-namespace](http://robots.thoughtbot.com/post/19398560514/how-to-copy-and-paste-with-tmux-on-mac-os-x)
utility installed. If not, remove the `reattach-to-user-namespace` call.
