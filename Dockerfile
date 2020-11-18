FROM mitchallen/pi-cross-compile

WORKDIR /build
COPY . /build

RUN 'sudo apt install -y bc git dkms build-essential raspberrypi-kernel-headers'
