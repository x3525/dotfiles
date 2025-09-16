history () {
    if [ $# -eq 0 ]
    then
        fc -i -l 1
    else
        print -n -u 2 "Delete comma[N]d histor[y]? "

        read -r || print

        case $REPLY in
            [yY])
                print -n -u 2 >| "$HISTFILE"
                fc -p "$HISTFILE"
                ;;
        esac
    fi
}
