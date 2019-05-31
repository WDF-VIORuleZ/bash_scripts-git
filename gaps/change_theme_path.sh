#!/bin/sh

if [[ $# -eq 2 ]];then
    case ${2#*.} in
        'clr')
        printf "[+] Patching color %s to %s \n" $2 $1
        ;;

        'bind')
        printf "[+] Patching bindym %s to %s\n" $2 $1
        ;;

        *)
        printf "invalid file format \'%s\' \n" ${2#*.} 
        exit -1
    esac 
else
    printf "[X] %s [i3_conf] [path.diff]\n" $0
    exit -1
fi

