FROM mitchallen/pi-cross-compile

WORKDIR /build
COPY . /build

RUN ["apt-get update && apt-get install -y git"]