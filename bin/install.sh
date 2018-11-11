#!/bin/bash

std_path = "$HOME/.bin/"
shell    = $SHELL

if [! -d "std_path"];then
  cd $HOME && mkdir .bin
  echo "Your stdshell is : $SHELL"
  echo "Created $HOME/.bin/ ..."

  #TODO INSERT GIT-URL
  echo "Cloning repository ..."
  git clone ""

  # Adding Direcotory ~/.bin to bashrc
    # TODO: For other shells, detection
  echo "# EXPORT VARIABLE BY #{TODO INSERT NAME}" >> ~/.bashrc
  echo 'export APP=/"$std_path"' >> ~/.bashrc

  echo "Added environment varibale in bashrc"
fi
