#!/bin/bash

dragons_title="DRAGONS" # ""
lives_title="LIVES" # ""
dead_title="YOU'RE DEAD" # ""

fight() {
    if [[ $dragons -gt 0 ]]
        then
            (( dragons-- ))
    fi
    toggle=1
}

fate() {
    echo $(od -A n -t d -N 1 /dev/urandom | tr -d ' ')
}

start() {
    lives=3
    dragons=0
    level=70
    toggle_name="fight"
}

start
while :
    do
        trap "$toggle_name" USR1
        case $lives in
        0)
            toggle_name="start"
            output="%{A1: kill -USR1 $$ :} $dead_title %{A}"
            ;;
        *)
            case $toggle in
            1)
                toggle=0
                ;;
            *)
                case $dragons in
                10)
                    (( lives-- ))
                    dragons=0
                    ;;
                0)
                    if [[ $(fate) -lt $level ]] 
                        then
                            (( dragons++ ))
                    fi
                    ;;
                *)
                    (( dragons++ ))
                    ;;
                esac
                ;;
            esac
            output=""
            if [[ $level -lt 255 ]] && [[ $(fate) -lt 127 ]]
                then
                    (( level++ ))
            fi
            if [[ $dragons -gt 0 ]]
                then
                    output="%{A1: kill -USR1 $$ :} $dragons_title $dragons/10 %{A}"
            fi
            output+="$lives_title $lives"
            ;;
        esac
        echo "$output AT LV $level"
        sleep 5m &
        wait
  done
