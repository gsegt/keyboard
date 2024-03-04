#!/bin/sh

echo "##### Update qmk dependencies"
cd qmk_firmware
git pull --recurse-submodule
cd ..
echo ""

echo "##### Moving necessary files for building"
rm -vfr ./qmk_firmware/keyboards/dz60_ickule
cp -vr ./dz60_ickule ./qmk_firmware/keyboards/dz60_ickule
echo ""

echo "##### Building board"
qmk compile -c -kb dz60_ickule -km v1 -j 16
echo ""

echo "##### Removing the temporary keyboard"
rm -vfr ./qmk_firmware/keyboards/dz60_ickule
echo ""

echo "##### Moving the compile results to the build folder"
mkdir -vp builds
mv -v ./qmk_firmware/dz60_ickule_v1.hex ./builds/dz60_v1.hex
echo ""

echo "##### Cleaning qmk build files"
qmk clean
