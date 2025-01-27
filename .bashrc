fastfetch

[[ $- = *i* ]] && source /usr/share/blesh/ble.sh
[[ ${BLE_VERSION-} ]] && ble-attach

[ -f "/home/edward/.ghcup/env" ] && . "/home/edward/.ghcup/env" # ghcup-env