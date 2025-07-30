hist () {
    if [ $# -eq 0 ]
    then
        fc -i -l 1
    else
        print -n -u 2 >| "$HISTFILE"
        fc -p "$HISTFILE"
    fi
}
