#!/bin/bash

NC='\033[0m' 
RED='\033[0;31m'
GREEN='\033[0;32m'

OK="[${GREEN}OK${NC}]"
ERR="[${RED}ERR${NC}]"

std_path="$HOME/.bin/"
sh=echo $SHELL | cut -d'/' -f2-

TITLE="Installing bash_scripts-git"

function write_to_rc(shell)
{
  shell_config = "~/."+$sh+"rc"
  echo "# EXPORT VARIABLE BY https://github.com/WDF-VIORuleZ/bash_scripts-git/" >> shell_config
  echo 'export APP=/"$std_path"' >> shell_config

  printf "${OK} Added exports to $shell_config"
}

function detect_shell(shell)
{
  valid = $(case $shell in
  "bash") write_to_rc($shell) ;;
  "zsh") write_to_rc($shell ;;
  *) echo valid=false ;;
  esac)

  return valid
}

main()
{
  if [ ! -d "std_path" ];then
    cd $HOME && mkdir .bin
    printf "${OK} Created Directory $HOME/.bin/"

    echo "Your stdshell is : $SHELL"
    if [ ! detect_shell($sh) ]
      printf "${ERR} I'm sorry, but your shell is currently not supported
      for adding the script directory to your path."
    fi

    echo "Cloning repository ..."std_path = "$HOME/.bin/"
    git clone https://github.com/WDF-VIORuleZ/bash_scripts-git.git

    else
      echo "${ERR} Directory $std_path already exists. Mission abort."
      exit
  fi
}

main()
