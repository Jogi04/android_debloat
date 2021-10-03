#!/bin/bash

sudo pacman -S android-tools --noconfirm --needed

$apps = @(

)

foreach ($app in $apps) {
    adb shell pm uninstall --user 0 $app
}
