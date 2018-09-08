if [[ -z $USB_DEVICE ]]; then
    USB_DEVICE=$(lsusb | grep RTL2838)
fi
if [[ -z $USB_DEVICE ]]; then
    echo "No RTLSDR device found!"
    exit
fi
REGEX="^Bus ([0-9]+)"

echo $USB_DEVICE =~ $REGEX
