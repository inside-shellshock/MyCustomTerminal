check_wifi=$(ipconfig.exe | grep 'wifiETH' -A4 | cut -d":" -f 2 | tail -n1 | sed -e 's/\s*//g')
check_eth=$(ipconfig.exe | grep 'EthernetDell' -A4 | cut -d":" -f 2 | tail -n1 | sed -e 's/\s*//g')
check_dock_eth=$(ipconfig.exe | grep 'DockingETH' -A4 | cut -d":" -f 2 | tail -n1 | sed -e 's/\s*//g')
if [[ -z $check_wifi ]]; then
        if [[ -z $check_eth ]]; then
                 echo $check_dock_eth;
        else
                echo $check_eth;
        fi
else
        echo $check_wifi;

fi
