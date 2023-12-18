#! /bin/sh

# deploy binaries with PiPico Probe - SWD
sudo openocd -f interface/cmsis-dap.cfg -f target/rp2040.cfg -c "adapter speed 5000" -c "program stlcd.elf verify reset exit"