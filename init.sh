#!/bin/bash

chmod +x dialog/debian-ubuntu/usr-share/*
chmod +x dialog/debian-ubuntu/git-manager
chmod +x dialog/termux/share/*
chmod +x dialog/termux/git-manager
chmod +x zenity/debian-ubuntu/usr-share/*
chmod +x zenity/debian-ubuntu/git-manager
chmod +x zenity/termux/share/*
chmod +x zenity/termux/git-manager


if (command -v dialog > /dev/null)
then
echo ""
else
echo "Cant Start Installation process due to Missing Dependencies... 'Dialog', Please Install Dialog First by Typing\n\nsudo apt-get install dialog -y"
exit 1
fi


TMP=$(mktemp $PREFIX/tmp/uid-XXXXXX)
trap "rm -rf $TMP" EXIT

dialog --backtitle "Wizard Installer" --title "Welcome" --infobox "Git-manager Beta 0.2 Installer\n\nBy SUFandom\nContact:\nReddit: u/itsfreepizza\nYoutube:Blaze YT\nGithub:SUFandom." 0 0
sleep 5
if (dialog --backtitle "Agree" --title "License Agreement" --yes-label "Agree" --no-label "Disagree" --yesno "MIT License\n\nCopyright (c) 2022 SUFandom\n\nPermission is hereby granted, free of charge, to any person obtaining\na copy\nof this software and associated documentation files ,(the 'Software'), to deal\nin the Software without restriction, including without limitation the rights\nto use, copy, modify, merge, publish, distribute, sublicense, and/or sell\ncopies of the Software, and to permit persons to whom the Software is\nfurnished to do so, subject to the following conditions:\n\nThe above copyright notice and this permission notice shall be\nincluded in all\ncopies or substantial portions of the Software.\nTHE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\nIMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\nFITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\nAUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\nLIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, \nOUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE\nSOFTWARE." 0 0) 
then
echo ""
else 
exit 1
fi 

dialog --backtitle "Wizard Installer" --infobox "Please Wait...." 0 0
sleep 1

uname -a >> $TMP
if (grep -i "Android" $TMP)
then
dialog --backtitle "Wizard Installer" --infobox "Termux Android Native.. Will install dependencies easily" 0 0
(
  echo "0" ; sleep 1
  apt-get update
  apt-get install zenity -y
  echo "42" ; sleep 1
  apt-get install git -y 
  echo "65" ; sleep 1
  if (command -v git > /dev/null) ; then echo "84" ; else echo "Error, can't find Git, maybe internet issue or problems with dpkg?" ; exit 1 ; fi 
  echo "100" ; sleep 1
  ) |
  dialog --backtitle "Wizard Installer" --gauge "Installing Dependencies" 0 0 0

else

dialog --backtitle "Wizard Installer" --infobox "Not an Android Device..\nChecking if dependencies installed..." 0 0
(
  echo "0" ; sleep 1
  apt-get update
  if [ -e /usr/git] ; then echo "" ; else echo "Error Finding Git, Please install it using sudo apt-get install git -y" ; fi 
  echo "76" ; if [ -e /usr/bin/zenity  ] ; then echo "" ; else echo "Error Finding Zenity, Please install it using apt-get install zenity -y" ; exit 1 ; fi
  echo "100" ; sleep 1
  ) |
  dialog --backtitle "Wizard Installer" --gauge "Installing Deb Packages..." 0 0 0
  
fi 

exec 3>&1
SEL=$( dialog --backtitle "Wizard Installer" --title "Choose Type of Installation" \
  --menu "Pick What type of Git-manager Do you Want?\n\nDialog - Installs a Dialog Version, like this GUI Style to your system. \nZenity - Installs an Interactive X11 Window Process" 0 0 0 \
  "Dialog" "Status: Stable" \
  "Zenity" "Status: Unstable" \
  2>&1 1>&3)
exec 3>&-
case $? in 
 $DIALOG_CANCEL)
 exit 1 ;;
 $DIALOG_ESC)
 exit 255 ;;
esac
case $SEL in 
  "Dialog")
  bash ist.sh --dialog ;;
  "Zenity")
  bash ist.sh --zenity ;:
esac 
