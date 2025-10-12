history() {
    if [ $# -eq 0 ]
    then
        fc -i -l 1
    else
        print -n -u 2 "Clear the histor[y] list? "

        read -r || print

        case $REPLY in
            [yY])
                print -n -u 2 >| "$HISTFILE"
                fc -p "$HISTFILE"
                ;;
        esac
    fi
}
