# v4.6.14(529)

## Old installer udp-custom ##

- add new user: ``` useradd -M change_me -s /bin/false -e 2023-12-31 && passwd change_me ```
- ubuntu 20.04-arm64 _(aarch64)_

```
wget --no-check-certificate "https://raw.githubusercontent.com/arju-syafa/udp-custom-installer/529-aarch64/udp-custom.sh" -O install-udp && chmod +x install-udp && ./install-udp
```
```
curl -o install-udp "https://raw.githubusercontent.com/arju-syafa/udp-custom-installer/529-aarch64/udp-custom.sh" && chmod +x install-udp && ./install-udp
```
[optional port exclude separated by coma, ex. 53,5300]

- Manually start udp-custom by executing command:
```
/root/udp/udp-custom server --config /root/udp/config.json
```

## Credit
> [ePro Dev. Team](https://t.me/s/ePro_Dev_Team)
