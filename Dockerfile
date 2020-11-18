FROM mitchallen/pi-cross-compile

# Switch into our apps working directory
WORKDIR /build
COPY . /build

# The base image has more examples how to use make or CMake for the project, directly
# calling the cross-compiler, is the minimal example here.
RUN ["make"]