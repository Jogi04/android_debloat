#!/bin/bash


if [[ $(pacman -Q | grep android-tools) == "" ]]
then
  sudo pacman -S android-tools --noconfirm --needed
fi

apps=(
  com.facebook.services
  com.facebook.katana
  com.facebook.system
  com.facebook.appmanager
)

for app in ${apps[@]}
do
    adb shell pm uninstall --user 0 $app
done
