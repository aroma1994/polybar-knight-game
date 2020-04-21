# Script: polybar-knight-game

A [Polybar](https://github.com/jaagr/polybar) script game. Only one knight. Only 5 lives. Dragon hordes.

![polybar-knight-game](screenshots/polybar-knight-game.png)

## Configuration

Add a dragon https://fontawesome.com/icons/dragon?style=solid, a heart https://fontawesome.com/icons/heart?style=solid and a skull https://fontawesome.com/icons/skull?style=solid symbols from Font Awesome 5 Free instead dragons_title, lives_title and dead_title in the script.


You can change variables in the script:

$lives — 3 by default — to any integer lives you want

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
