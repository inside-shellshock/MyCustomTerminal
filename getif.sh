check_eth=$(ipconfig.exe | grep 'YOUR_ETHERNET_INTERFACE_NAME' -A4 | cut -d":" -f 2 | tail -n1 | sed -e 's/\s*//g')
check_dock_eth=$(ipconfig.exe | grep 'YOUR_SECONDARY_ETHERNET_INTERFACE_NAME' -A4 | cut -d":" -f 2 | tail -n1 | sed -e 's/\s*//g')
if [[ -z $check_eth ]]; then echo $check_dock_eth; fi
