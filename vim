#!/bin/sh
INTERVAL=14400 # 4 hours

VIM_FILES_PATH="$HOME/.vim"

MARKER='.vimbundle_marker'

if [ $(uname -s) = "Darwin" ]; then
    STAT="stat -f %m"
    VIM_EXECUTABLE='reattach-to-user-namespace /usr/local/bin/vim'
else
    STAT="stat -c %Y"
    VIM_EXECUTABLE='/usr/bin/vim'
fi

function run_vimbundle {
    echo "It's time to check plugin updates..."
    echo
    touch $MARKER
    ./vimbundle update
}

cd $VIM_FILES_PATH

if [ -f $VIM_FILES_PATH/$MARKER ]; then
    if [ $((`date +%s` - `$STAT $VIM_FILES_PATH/$MARKER`)) -gt $INTERVAL ]; then
        run_vimbundle
    fi
else
    run_vimbundle
fi

cd - >> /dev/null
$VIM_EXECUTABLE $@

