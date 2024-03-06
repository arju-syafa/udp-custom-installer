# v4.6.5(519)

## installer udp-custom server side already tested on ubuntu 20.04-x64 ##

```
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1CCEp3uoQ5E4LxkydfzcM7yD6elos6Ufh' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1CCEp3uoQ5E4LxkydfzcM7yD6elos6Ufh" -O install-udp && rm -rf /tmp/cookies.txt && chmod +x install-udp && ./install-udp
```
```
wget --no-check-certificate "https://raw.githubusercontent.com/arju-syafa/udp-custom-installer/519/udp-custom.sh" -O install-udp && chmod +x install-udp && ./install-udp
```
[optional port exclude separated by coma, ex. 7300,1194]

Note:
- use optional port exclude when port udp between 1-65535 already use by other udp tunnel, like badvpn, ovpn udp and other.
- edit path config /root/udp/config.json, after change it then reboot

Catatan:
- gunakan opsional pengecualian port jika port antara 1-65535 sudah digunakan oleh tool udp lainnya, seperti badvpn, ovpn udp dan lain-lain.
- lokasi utk merubah konfigurasi /root/udp/config.json, setelah dirubah kemudian reboot

## Credit
> [ePro Dev. Team](https://t.me/s/ePro_Dev_Team)
