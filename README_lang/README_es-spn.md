# Git Manager

**Spanish Language**

Cambiar a la versión en inglés [aquí](README.md)


Un script de instalación de Git a su conveniencia para Termux y Debian/Ubuntu 

Esta área está traducida con Google Translate..

## Características de este Repositorio 

- Puedes Git Clone a gusto
- Puede configurar `git push` para agregar credenciales para que pueda impulsar ciertos proyectos

## Se pueden agregar algunas características

- Actualizar Git-manager a través de Bash

## Dependencias

- Git
- Dialog
- Zenity (X11)


## Sistema Operativo que soportará este proyecto 

- Debian/Ubuntu
- Android (Termux)

##  Instalación 

Básicamente, `init.sh` instalará todos los paquetes necesarios, si tiene conexión a Internet. así que no es necesario escribir `apt install` excepto si está en Debian/Ubuntu y no en la raíz.

## Instalar en Debian/Ubuntu

```
  # Actualizar Fuerte APT
  apt update
  
  # Instalar paquetes Debian/Ubuntu
  sudo apt install git dialog zenity -y 
  
  # Clonar el proyecto 
  git clone https://github.com/SUFandom/git-manager
  
  # Ver carpeta de directorio de git-manager
  cd git-manager
  
  # chmod init.sh 
  chmod +x init.sh 
  
  # Inicie el script init.sh
  ./init.sh 
  
```

Luego espere un momento y luego aparecerá un cuadro de diálogo emergente que le mostrará qué tipo de administrador de git desea (Dialog/X11 Zenity)

(**NOTA IMPORTANTE: NO PUEDES INSTALAR AMBAS VERSIONES YA QUE AMBAS SERÁN REEMPLAZADAS DE TODOS MODOS**)

Una vez que haya terminado de leer la licencia (estoy seguro de que no), el instalador intentará extraer los activos a los directorios de trabajo y hacer que la configuración funcione.

Y listo, puedes convocar al git-manager de la siguiente manera:

```
  git-manager
```

### Problemas con este repositorio en Ubuntu/Debian

- Zenity
    - Al intentar usar este repositorio bajo VNC, es posible que zenity no encuentre la sesión de la ventana, no ha habido soluciones para eso, pero puede usar XServer XSDL o cualquier otra sesión de X Server. Aunque podría usar xhost, pero hace que el proceso sea demasiado complicado. 


### Instalación en Termux Android

Para termux, es pan comido, comunicarse con apt para instalar dependencias es más fácil porque no necesita root cuando lo hace.

Solo puedes hacer:

```
  # Actualizar repositorio 
  apt update
  
  # Instalar Git
  apt install git -y
  
  # Clone
  git clone https://github.com/SUFandom/git-manager
  
  # Ir al Directorio 
  cd git-manager
  
  # Elevar permiso a ejecutable 
  chmod +x init.sh 
  
  # Inicie el script Bash 
  ./init.sh
```

Y el script intentará instalar las dependencias que faltan.

Después del breve proceso, será recibido por un mensaje de diálogo, aceptando la licencia y luego la versión que desea instalar. Diálogo solo para uso de línea de comandos y para Zenity a través del proceso X11

**NOTA: NO PUEDE INSTALAR AMBAS VERSIONES Y TRATARÁ DE SOBREESCRIBIR LA INSTALACIÓN EXISTENTE**


Después de la instalación, puede utilizar el script que tiene a su disposición.

## Screenshot

![img-1-spn](/README_lang/README_lang_asset/dialog-menu.jpg)

*Dialog Menu*

![img-2-spn](/README_lang/README_lang_asset/zenity-menu.jpg)

*Zenity Menu*

## Uninstall

Este proyecto tiene un desinstalador para simplemente eliminar los archivos que instaló Git-manager, puede ejecutarlo

```
  ./uninstall.sh 
``` 


