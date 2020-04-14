#!/bin/sh

FILE="/tmp/polybar-knight-game-dragons"

dragons_write() {

		echo $dragons > $FILE

	}

dragons_read() {

		dragons=$(<$FILE)

	}

fate() {

		echo $(od -A n -t d -N 1 /dev/urandom | tr -d ' ')

	}

case "$1" in

	--removedragon)

		dragons_read
		if [ $dragons -gt 0 ]

			then

				(( dragons-- ))
				dragons_write

			fi

	;;

	*)

		lives=5 # 1 ... N
		level=30 # 1-255
		speed="30m" # s, m, h, d

		dragons=0 # initialization
		dragons_write

		while [ $lives -ne 0 ]

			do

				dragons_read
				if [ $dragons -eq 0 ]

					then

						if [ $(fate) -lt $level ]

							then

								(( dragons++ ))

						fi

					elif [ $dragons -eq 10 ]

						then

							(( lives-- ))
							dragons=0

					else

						(( dragons++ ))

					fi

				if [ $level -lt 255 ]

					then

						if [ $(fate) -lt $(fate) ]

							then

								(( level++ ))

							fi

					fi

				if [ $dragons -gt 0 ]

					then

						echo " #2 " $lives " #1 " $dragons

					else

						echo " #2 " $lives

					fi


				dragons_write
				sleep $speed &
				wait

			done

		while :

			do

				echo "#1#3"

			done
      
	;;

	esac
  
