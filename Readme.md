## LCD12864 - ST7565 - SPI - Pi Pico example

### References:

[Getting Started with Pi Pico](https://datasheets.raspberrypi.com/pico/getting-started-with-pico.pdf?_gl=1*19yed8g*_ga*MTc4MTY5NDg4Ni4xNjk2MDc0NTk0*_ga_22FD70LWDS*MTcwMjUwMTAxNy4xLjEuMTcwMjUwMTY4Mi4wLjAuMA..)

### Original Adafruit/Arduino code found here

[Adafruit/ST7565-LCD](https://github.com/adafruit/ST7565-LCD)

### Install Vscode extensions for debug

Once the install has completed, install the extensions needed to debug a Raspberry Pi Pico:

```
$ code --install-extension marus25.cortex-debug
$ code --install-extension ms-vscode.cmake-tools
$ code --install-extension ms-vscode.cpptools
```

### Export Pi Pico SDK

Finally, start Visual Studio Code from a Terminal window:

```
$ export PICO_SDK_PATH=/home/pi/pico/pico-sdk
$ code
```

### Add Vscode settings.

The pico-examples repo contains an example debug configuration that will start **OpenOCD**, attach **GDB**, and finally launch
the application CMake is configured to build. Go ahead and copy this file (launch-raspberrypi-swd.json) into the picoexamples/.vscode directory as launch.json. We also provide a settings.json file that we recommend you also copy. This
settings.json removes some potentially confusing options from the CMake plugin (including broken Debug and Run
buttons that attempt to run a Pico binary on the host).

```
$ cd ~/pico/pico-examples
$ mkdir .vscode
$ cp ide/vscode/launch-raspberrypi-swd.json .vscode/launch.json
$ cp ide/vscode/settings.json .vscode/settings.json
```

### Note:

You may have to amend the gdbPath in launch.json if your gdb is called **arm-none-eabi-gdb** instead of **gdb-multiarch**.
**PLEASE NOTE:** Launch the debugger from the Debug Launcher and _NOT_ from the Cmake build tools.

### Tip:

If you switch to the "Terminal" tab in the bottom right-hand pane, you can use this to
open minicom inside VSCode to see the UART output from the "Hello USB" example by typing,

```
$ minicom -b 115200 -o -D /dev/cu.usbmodem143202
```
