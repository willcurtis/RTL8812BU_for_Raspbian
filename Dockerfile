FROM mitchallen/pi-cross-compile

WORKDIR /build
COPY . /build

RUN ["git clone https://github.com/fastoe/RTL8812BU_for_Raspbian"]
