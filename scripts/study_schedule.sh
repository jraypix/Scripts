#!/bin/bash

study_schedule=$(date +"%a")

echo "Study schedule for $study_schedule"

case $study_schedule in

  Mon)
    echo "13:00 - 15:30"
    ;;

  Tue)
    echo "13:00 - 23:30"
    ;;

  Wed)
    echo "13:00 - 23:30"
    ;;

  Thu)
    echo "13:00 - 23:30"
    ;;

  Fri)
    echo "13:00 - 23:00"
    ;;

  Sat)
    echo "13:00 - 16:00"
    ;;

  Sun)
    echo "Take a rest!!"
    ;;

  *)
    ;;
esac
