# Realtek 8812BU driver for Raspbian

Driver for 802.11ac USB adapter with RTL8812BU chipset, only STA/Monitor mode is supported, no AP mode.

A few known wireless cards that use this driver include:
* [Fastoe AC1200 USB Wi-Fi Adapter](https://www.amazon.com/1200Mbps-ChromeBook-802-11ac-Compatible-Raspbian/dp/B081TGWCVB/ref=as_li_ss_tl?m=A9879GOT1YWJ2&marketplaceID=ATVPDKIKX0DER&qid=1581225299&s=merchant-items&sr=1-3&linkCode=ll1&tag=fastoe-20&linkId=5648949a51280f0323dd599dc27dbae4&language=en_US)

Currently tested with Linux kernel 4.19.97-v7+ on Raspberry Pi 3 B+.

### Manual installation

To build, you have to retrieve source and run `make`.
If via Git, do following:

```bash
git clone https://github.com/fastoe/RTL8812BU_for_Raspbian.git
cd RTL8812BU_for_Raspbian
make
sudo make install
sudo reboot
```

Enjoy!