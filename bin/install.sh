#!/bin/bash

TITLE="Installing bash_scripts-git"

std_path="$HOME/.bin/"
shell=$SHELL

if [ ! -d "std_path" ];then
  cd $HOME && mkdir .bin
  # TODO: For other shells, detection
  echo "Your stdshell is : $SHELL"
  echo "Created $HOME/.bin/ ..."

  echo "Cloning repository ..."
  git clone https://github.com/WDF-VIORuleZ/bash_scripts-git.git

  # Adding Direcotory ~/.bin to bashrc
  echo "# EXPORT VARIABLE BY #{TODO INSERT NAME}" >> ~/.bashrc
  echo 'export APP=/"$std_path"' >> ~/.bashrc

  echo "Added environment varibale in bashrc"

  else
    echo "[ERR] Directory $std_path already exists. Mission abort."
    exit
fi
