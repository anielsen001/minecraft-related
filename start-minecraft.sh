#!/bin/sh
#
# start-minecraft.sh
#
# wrap minecraft in a startup script that will also start xboxdrv
# to allow for use of a controller.

sudo /usr/bin/xboxdrv -c $HOME/minecraft/xboxdrv/xboxdrv.config/usb-Xiaoji_Gamesir-G3w-event-joystick.xboxdrv -c $HOME/minecraft/xboxdrv/xboxdrv.config/Minecraft.xboxdrv &
XBOXDRV_PID=$!

#java -jar $HOME/minecraft/Minecraft.jar
$HOME/minecraft/minecraft-launcher/minecraft-launcher

# kill $XBOXDRV_PID

sudo /usr/bin/killall xboxdrv
