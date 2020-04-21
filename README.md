# Script: polybar-knight-game

A [Polybar](https://github.com/jaagr/polybar) .sh-script game.

A simple and slow background .sh-game. You have 5 lives. You live in the world full of darkness where from time to time dragons are resurge. When you meet a dragon press on it to kill it. If there're 10/10 dragons you lose one of your lives.

![polybar-knight-game](screenshots/polybar-knight-game.png)

![polybar-knight-game-another](screenshots/polybar-knight-game-another.png)

Only one knight. Only 5 lives. Dragon hordes.

## Configuration

Add a dragon https://fontawesome.com/icons/dragon?style=solid, a heart https://fontawesome.com/icons/heart?style=solid and a skull https://fontawesome.com/icons/skull?style=solid symbols from Font Awesome 5 Free instead dragons_title, lives_title and dead_title in the script.


You can change variables in the script:

$lives — 5 by default — to any integer lives you want

$level — 30 by default — to 1-255 (it will ++ from time to time while you play)

$speed — 5 minutes by default — to
+ Ns (N seconds for very-very fast game) or
+ Nm (N minutes for background game) or
+ Nh (N hours mm maybe) or
+ Nd (N days for very-very slow game use it only if your machine have years of living uptime).

## Module

```ini
[module/polybar-knight-game]
type = custom/script
exec = polybar-knight-game.sh
label-padding = 1
tail = true
```
