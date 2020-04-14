# Script: polybar-knight-game

A [Polybar](https://github.com/jaagr/polybar) script game. Only one knight. Only 5 lives. Dragon hordes.

![polybar-knight-game](screenshots/polybar-knight-game.png)

## Dependencies

Game creates a temporary file to count her dragons.

## Configuration

Add a dragon https://fontawesome.com/icons/dragon?style=solid, a heart https://fontawesome.com/icons/heart?style=solid and a skull https://fontawesome.com/icons/skull?style=solid symbols from Font Awesome 5 Free instead #1, #2 and #3 in the script.


You can change variables in the script:

$FILE — to suitable temporary file (/tmp/polybar-knight-game-dragons by default),

$lives — to any integer lives you want (5 by default),

$level — to 1-255 (30 by default, it will ++ from time to time while you play),

$speed — to
+ Ns (seconds for very-very fast game) or
+ Nm (30 minutes by default) or
+ Nh (hours mm maybe) or
+ Nd (days veeery sloooww use it only if your machine have years of living uptime).

## Module

```ini
[module/polybar-knight-game]
type = custom/script
exec = polybar-knight-game.sh
click-left = polybar-knight-game.sh --removedragon &
label-padding = 1
tail = true
```
