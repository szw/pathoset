#!/bin/bash
INTERVAL=28800 # 8 hours
VIM_FILES_PATH="$HOME/.vim"

if [ $(uname -s) = "Darwin" ]; then
    STAT="stat -f %m"
    VIM_EXECUTABLE='reattach-to-user-namespace /usr/local/bin/vim'
else
    STAT="stat -c %Y"
    VIM_EXECUTABLE='/usr/bin/vim'
fi

MARKER='.pathoset_marker'

function run_pathoset {
    echo "It's time to check plugin updates..."
    echo
    touch $MARKER
    ./pathoset update
}

cd $VIM_FILES_PATH

if [ -f $VIM_FILES_PATH/$MARKER ]; then
    if [ $((`date +%s` - `$STAT $VIM_FILES_PATH/$MARKER`)) -gt $INTERVAL ]; then
        run_pathoset
    fi
else
    run_pathoset
fi

cd - >> /dev/null

exec $VIM_EXECUTABLE $@

