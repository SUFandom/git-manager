#!/bin/bash

if (uname -a | grep "Android")
  then 
  rm -rf $PREFIX/bin/git-manager
  rm -rf $PREFIX/var/lib/git-manager/*
  echo "Done"
  exit
  else
  rm -rf /usr/bin/git-manager
  rm -rf /var/lib/git-manager/*
  echo "Done"
  exit
  fi