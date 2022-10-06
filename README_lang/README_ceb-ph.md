# Git-manager

**Cebuano(Bisaya) Philippines Language**

Go back to english [Here](/README.md)

Ang tool para sa pag-clone sa repositoryo gikan sa Github

## Mga Badges

![logo_diag](https://img.shields.io/badge/Dialog-Beta--0.2-blue?style=flat-square&logo=gnubash) Para sa: ![os-deb](https://img.shields.io/badge/-Debian-red?style=flat-square&logo=debian) , ![os-ubu](https://img.shields.io/badge/-Ubuntu-orange?style=flat-square&logo=ubuntu) , ![os-and](https://img.shields.io/badge/-Android-yellowgreen?style=flat-square&logo=android)

![logo_zenity](https://img.shields.io/badge/Zenity-Beta--0.1-green?style=flat-square&logo=gnubash) Para sa: ![os-deb](https://img.shields.io/badge/-Debian-red?style=flat-square&logo=debian) , ![os-ubu](https://img.shields.io/badge/-Ubuntu-orange?style=flat-square&logo=ubuntu) , ![os-and](https://img.shields.io/badge/-Android-yellowgreen?style=flat-square&logo=android)

## Mga Features ng Git-manager na magamit nimo

- Clone
- Ibag-o ang Setting Configuration para maka push ang imong binuhat sa isa ka proyekto gamit aning `git push`

## Mga Features na Gina-develop pa

- Update Feature

## Mga Dependencies na kailangan sa script

- Git
- Zenity (X11)
- dialog 

## Mga Suportadong OS

- Debian
- Ubuntu
- Android (Termux)


## Instalasyon

Ang `init.sh` ay mubahala sa pag-ila sa imohang OS para mugana ang Instalasyon, Pero kung Nag-gamit ka ug Debian/Ubuntu, Kailangan pa nimo buhaton ang Pag-install sa iyang komponents para mugana ni kini.

## Instalasyon sa Ubuntu ug Debian

Kani imong buhaton kung ganahan ka mugamit aning Git-manager 

```
  # I-update ang APT
  apt update
  
  # I-install ang mga dependencies
  apt install dialog zenity git -y
  
  # Clone ang Git-manager
  git clone https://github.com/SUFandom/git-manager
  
  # Adto sa folder
  cd git-manager
  
  # Elevate ang Permiso
  chmod +x init.sh 
  
  # Start nimo dayon 
  ./init.sh
```
## Problema sa kaning repositoryo para sa Ubuntu/Debian

- Zenity
    - Kadalasan Dili mugana ang Zenity-based na Git-manager kay dili maka-konek sa `DISPLAY:1` na VNC. Dili Pa ko Sure unsa ang ayu ani pero i-prefer ko na lang ang paggamit kining Dialog Version

## Instalasyon sa Termux Android 

Sa Termux, sayon ra kaayo ang pag-install aning Repositoryo kay ang Script ray mu-adjust kung naay kulang. kay tungod, dili kinahanglan mag `sudo` para ma-install kesa sa mga Linux Machine pero ok naman para sa seguridad..

Kani ang imong Buhaton para makuha nimo ning Repositoryo

```
  # I-update ang APT
  apt update
  
  # I-install ang Git
  apt install git -y
  
  # I-clone ang Git-repo
  git clone https://github.com/SUFandom/git-manager
  
  # Adto sa Folder
  cd git-manager
  
  # Patas-i ang Permiso
  chmod +x init.sh 
  
  # Start dayon nimo
  ./init.sh 
  
```

Pag-human, mag-agree sa License and Install dayun.

**Timan-i Intawon na dili na sya ma-install ug duha ka versions**

## Mga Screenshot sa aning script...

![img-diag](/README_lang/README_lang_asset/dialog-menu.jpg)

*Imahe sa Git-manager pero Dialog Version*

![img-zen](/README_lang/README_lang_asset/zenity-menu.jpg)

*Imahe sa Git-manager sa Zenity Version*

## I-hawa ang Git-manager sa system

Naa na may Gi-include na Uninstaller sa kaning Repositoryo, so i-start ra nimo then i-type:

```
  ./uninstall.sh 
```

Pero kung gi-delete nimo, ah pisti, maypa gi save ra nimo intawon. Pero i-copy na lang ni:

```
  if (uname -a | grep "Android")
  then 
  rm -rf $PREFIX/bin/git-manager
  rm -rf $PREFIX/var/lib/git-manager/*
  exit
  else
  rm -rf /usr/bin/git-manager
  rm -rf /var/lib/git-manager/*
  exit
  fi
```
