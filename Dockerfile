FROM mitchallen/pi-cross-compile
RUN sudo apt install -y bc git dkms build-essential raspberrypi-kernel-headers
RUN sudo apt install -y bc git flex bison libssl-dev
RUN sudo wget https://raw.githubusercontent.com/RPi-Distro/rpi-source/master/rpi-source -O /usr/local/bin/rpi-source && sudo chmod +x /usr/local/bin/rpi-source && /usr/local/bin/rpi-source -q --tag-update
RUN rpi-source
RUN git clone https://github.com/fastoe/RTL8812BU_for_Raspbian
RUN cd RTL8812BU_for_Raspbian
RUN make