#!/bin/sh

# Moving files necessary files for building
rm -fr ./qmk_firmware/keyboards/dz60_ickule
cp -r ./dz60_ickule ./qmk_firmware/keyboards/dz60_ickule

# Building board
qmk compile -kb dz60_ickule -km default -j 16
rm -fr ./qmk_firmware/keyboards/dz60_ickule

# Moving the compile results to the current folder
mv ./qmk_firmware/dz60_ickule_default.hex .
