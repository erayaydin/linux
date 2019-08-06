# No Encryption
iw dev wlp2s0 connect [SSID]

# WEP
iw dev wlp2s0 connect [SSID] key 0:[KEY]

# WPA
wpa_passphrase [SSID] [PASS] > /etc/wpa_supplicant/[SSID].conf:
