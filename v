#!/bin/bash
INTERVAL=14400 # 4 hours

VIM_FILES_PATH="$HOME/.vim"
VIM_EXECUTABLE='vim'

MARKER='.vimbundle_marker'

function run_vimbundle {
    echo "It's time to check plugin updates..."
    echo
    touch $MARKER
    ./vimbundle update
}

cd $VIM_FILES_PATH

if [ -f $VIM_FILES_PATH/$MARKER ]; then
    if [ $((`date +%s` - `stat -c %Y $VIM_FILES_PATH/$MARKER`)) -gt $INTERVAL ]; then
        run_vimbundle
    fi
else
    run_vimbundle
fi

cd - >> /dev/null
$VIM_EXECUTABLE "$@"
