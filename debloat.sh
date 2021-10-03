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

  com.microsoft.appmanager
  com.microsoft.office.excel
  com.microsoft.office.powerpoint
  com.microsoft.office.word
  com.microsoft.skydrive
)

for app in ${apps[@]}
do
    adb shell pm uninstall --user 0 $app
done
