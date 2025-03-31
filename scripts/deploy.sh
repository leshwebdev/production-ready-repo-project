#!/bin/bash
#mock  deployment script found online, altered a little...

 HOST=$1
 while true; do
   case "$HOST" in
     heroku)
      read -p "Youve deployed to heroku"
      break
      ;;
    firebase)
      read -p "Youve deployed to firebase"
      break
      ;;
    *)
      read -p "You can only choose between Heroku and Firebase. " HOST                                            
      ;;
   esac
 done
