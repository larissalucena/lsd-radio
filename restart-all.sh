#!/usr/bin

if [ `whoami` != root ]; then
    echo Please run this script as root or using sudo
    exit
fi

bash stop-all.sh
pkill ices
bash start-all.sh

#Comment if you want ices logs to be enabled
cp ices_py/* /usr/local/etc/modules/
