# Realtek 8812BU Driver for Raspbian

Driver for 802.11ac USB adapter with RTL8812BU chipset, only STA/Monitor mode is supported, no AP mode.

A few known wireless cards that use this driver include:
* [Fastoe AC1200 USB Wi-Fi Adapter](https://www.amazon.com/1200Mbps-ChromeBook-802-11ac-Compatible-Raspbian/dp/B081TGWCVB/ref=as_li_ss_tl?m=A9879GOT1YWJ2&marketplaceID=ATVPDKIKX0DER&qid=1581225299&s=merchant-items&sr=1-3&linkCode=ll1&tag=fastoe-20&linkId=5648949a51280f0323dd599dc27dbae4&language=en_US)
* Cudy WU1200 AC1200 High Gain USB Wi-Fi Adapter

Currently tested with Linux RaspberryPi 5.4.51-v7l+/4.19.118-v7+/4.19.97-v7+ on:
- Raspberry Pi 4 B
- Raspberry Pi Zero W
- Raspberry Pi 3 B+
- Raspberry Pi 2 B

### Manual installation

To build, you have to retrieve source and run `make`, do following:

```bash
sudo apt update
sudo apt install -y bc git dkms build-essential raspberrypi-kernel-headers
git clone https://github.com/fastoe/RTL8812BU_for_Raspbian
cd RTL8812BU_for_Raspbian
make
sudo make install
sudo reboot
```

If fails to compile like this:
```
pi@raspberrypi:~/RTL8812BU_for_Raspbian $ make
make ARCH=arm CROSS_COMPILE= -C /lib/modules/5.4.51-v7+/build M=/home/pi/RTL8812BU_for_Raspbian  modules
make[1]: *** /lib/modules/5.4.51-v7+/build: No such file or directory.  Stop.
make: *** [Makefile:2284: modules] Error 2
```
please run the `rpi-source` command to install the kernel headers for kernel 5.4.51-v7+:
```
sudo apt install bc git flex bison libssl-dev
sudo wget https://raw.githubusercontent.com/RPi-Distro/rpi-source/master/rpi-source -O /usr/local/bin/rpi-source && sudo chmod +x /usr/local/bin/rpi-source && /usr/local/bin/rpi-source -q --tag-update
rpi-source
```
then, re-make again.

Enjoy!
