#!/bin/bash
 name=""
 wishes=""
  
  usage(){
    echo "usage::$(basename $0) -n<name> -w<wishes>"
    echo "options ::"
    echo "-n,specify the name(mandatory)"
    echo "-w,specify wishes"
    echo "-h, displays help and exit"
  }

  while getopt ":n:w:h" opt; do
     case $opt in
        n) name="$optarg";;
        w) wishes="$optarg";;
        \?)echo "invalid option -"$optarg"" >&2; usage; exit;;
         :)usage; exit;;
         h)usage; exit;;
     esac
   done

   if [ -z "$name" ] || [ -z "$wishes" ]; then
      echo "error : both -n and -w are mandatory"
      usage
      exit 1

   fi

   echo "hi from $name whishing you $wishes i have been learning shell-script"