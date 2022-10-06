#!/bin/bash
# Dialog Installation 
if [[ "$1" == "--dialog" ]]
then 
if ( uname -a | grep "Android" )
then 
(
  echo "0" ; sleep 1
  mkdir $PREFIX/share/git-manager
  echo "36" ; sleep 1
  cp -r dialog/termux/git-manager $PREFIX/bin/ 
  echo "42" ; sleep 1
  cp -r dialog/termux/share/* $PREFIX/share/git-manager/
  echo "58" ; sleep 1
  mkdir $PREFIX/var/lib/git-manager
  echo "87" ; sleep 1
  touch $PREFIX/var/lib/git-manager/key
  echo "100" ; sleep 1
  ) |
  dialog --backtitle "Wizard Installer" \
  --title "Installing" \
  --gauge 0 0 0
  
  dialog --backtitle "Wizard Installer" --title "Message" --msgbox "Thank you for installing this script..\n\nPressing OK will launch git-manager.." 0 0
  bash git-manager
  exit
  else
  
  
 (
  echo "0" ; sleep 1
  mkdir /usr/share/git-manager
  echo "36" ; sleep 1
  cp -r dialog/debian-ubuntu/git-manager /usr/bin/ 
  echo "42" ; sleep 1
  cp -r dialog/debian-ubuntu/share/* /usr/share/git-manager/
  echo "58" ; sleep 1
  mkdir /var/lib/git-manager
  echo "87" ; sleep 1
  touch /var/lib/git-manager/key
  echo "100" ; sleep 1
  ) |
  dialog --backtitle "Wizard Installer" \
  --title "Installing" \
  --gauge 0 0 0
  
  dialog --backtitle "Wizard Installer" --title "Message" --msgbox "Thank you for installing this script..\n\nPressing OK will launch git-manager.." 0 0
  bash git-manager
  exit 
  fi
fi
# Zenity Install
if [[ "$1" == "--zenity" ]]
then 
if ( uname -a | grep "Android" )
then 
(
  echo "0" ; sleep 1
  mkdir $PREFIX/share/git-manager
  echo "36" ; sleep 1
  cp -r zenity/termux/git-manager $PREFIX/bin/ 
  echo "42" ; sleep 1
  cp -r zenity/termux/share/* $PREFIX/share/git-manager/
  echo "58" ; sleep 1
  mkdir $PREFIX/var/lib/git-manager
  echo "87" ; sleep 1
  touch $PREFIX/var/lib/git-manager/key
  echo "100" ; sleep 1
  ) |
  dialog --backtitle "Wizard Installer" \
  --title "Installing" \
  --gauge 0 0 0
  
  dialog --backtitle "Wizard Installer" --title "Message" --msgbox "Thank you for installing this script..\n\nPressing OK will launch git-manager.." 0 0
  bash git-manager
  exit
  else
  
  
 (
  echo "0" ; sleep 1
  mkdir /usr/share/git-manager
  echo "36" ; sleep 1
  cp -r zenity/debian-ubuntu/git-manager /usr/bin/ 
  echo "42" ; sleep 1
  cp -r zenity/debian-ubuntu/share/* /usr/share/git-manager/
  echo "58" ; sleep 1
  mkdir /var/lib/git-manager
  echo "87" ; sleep 1
  touch /var/lib/git-manager/key
  echo "100" ; sleep 1
  ) |
  dialog --backtitle "Wizard Installer" \
  --title "Installing" \
  --gauge 0 0 0
  
  dialog --backtitle "Wizard Installer" --title "Message" --msgbox "Thank you for installing this script..\n\nPressing OK will launch git-manager.." 0 0
  bash git-manager
  exit 
  fi
fi