Pathoset
=========

The Pathogen compatible plugin set installer and updater.

Installation and usage
----------------------

    mkdir ~/.vim
    cd ~/.vim
    curl -so pathoset https://raw.github.com/szw/pathoset/master/pathoset
    chmod +x pathoset
    ~/.pathoset

If you want to perform updates automatically in given time intervals grab the `vim` script:

    curl -so v https://raw.github.com/szw/pathoset/master/vim
    chmod +x vim

Next, move it e.g. into your .local/bin directory (assuming it is on your `$PATH` but before orignal
`vim` binary).

    mv vim ~/.local/bin

You can edit it to alter default settings (if necessary). The default interval is set to 4h. The
default vim files folder is set to `~/.vim`, and the default vim executable is set depending on your
OS.

The OSX variant assumes you are using TMux and you have the
[reattach-to-user-namespace](http://robots.thoughtbot.com/post/19398560514/how-to-copy-and-paste-with-tmux-on-mac-os-x)
utility installed. If not, remove the `reattach-to-user-namespace` call.
