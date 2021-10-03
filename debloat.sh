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

  com.android.chrome
  com.sec.android.app.chromecustomizations

  com.samsung.android.app.settings.bixby
  com.samsung.android.bixby.agent
  com.samsung.android.bixby.agent.dummy
  com.samsung.android.bixby.es.globalaction
  com.samsung.android.bixby.plmsync
  com.samsung.android.bixby.service
  com.samsung.android.bixby.voiceinput
  com.samsung.android.bixby.wakeup
  com.samsung.android.bixbyvision.framework
  com.samsung.systemui.bixby
  com.samsung.systemui.bixby2
  com.samsung.android.visionintelligence
  com.samsung.android.app.routines
  com.samsung.android.app.spage

  com.samsung.android.arzone

  com.samsung.android.app.tips

  com.samsung.android.lool

  com.skype.raider

  com.dsi.ant.plugins.antplus
  com.dsi.ant.sample.acquirechannels
  com.dsi.ant.server
  com.dsi.ant.service.socket

  com.google.android.apps.tachyon
  com.google.android.apps.maps
  com.google.android.apps.docs
  com.google.android.apps.photos
  com.google.android.googlequicksearchbox
  com.google.android.music
  com.google.android.videos

  com.netflix.partner.activation
  com.netflix.mediaclient
)

for app in ${apps[@]}
do
    adb shell pm uninstall --user 0 $app
done
