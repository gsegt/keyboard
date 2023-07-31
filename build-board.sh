#!/bin/sh

# Update repos
git pull --recurse-submodule

# Moving necessary files for building
rm -fr ./qmk_firmware/keyboards/dz60_ickule
cp -r ./dz60_ickule ./qmk_firmware/keyboards/dz60_ickule

# Building both v1 and v2 board
qmk compile -kb dz60_ickule -km v1 -j 16

# Removing the temporary keyboard
rm -fr ./qmk_firmware/keyboards/dz60_ickule

# Moving the compile results to the build folder
mkdir -p builds
mv ./qmk_firmware/dz60_ickule_v1.hex ./builds/dz60_v1.hex

# Cleaning qmk build files
qmk clean
