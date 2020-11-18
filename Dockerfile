FROM mitchallen/pi-cross-compile

# Switch into our apps working directory
WORKDIR /build
COPY . /build

# The base image has more examples how to use make or CMake for the project, directly
# calling the cross-compiler, is the minimal example here.
RUN ["/pitools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-gcc", "-o", "hello", "hello.cpp"]