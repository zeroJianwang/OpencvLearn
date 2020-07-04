#!/usr/bin/bash
echo "+------------------------------------------------------+"
echo "  system helper"
echo "  author:jianwang"
echo "  2020-07-04"
echo "+------------------------------------------------------+"
menu() {
    cat <<-EOF 
    #############################################################    
    #    h.help                                                 #
    #    f.disk partition                                       #
    #    d.filesystem mount                                     #
    #    m.memory                                               #
    #    u.system old                                           #
    #    q.exit                                                 #
    #############################################################
EOF
}
menu

while :
do
    read -p "Please input[h for help]: " action
    case "$action" in
    h)      clear;menu;;
    f)      fdisk -l;;
    d)      df -Th;;
    m)      free;;
    u)      uptime;;
    q)      break;;
    "")      ;;
    *)      echo "error"
    esac
done
echo "Finish..."
