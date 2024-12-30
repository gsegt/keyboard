#!/bin/sh

echo "##### Update qmk dependencies"
cd qmk_firmware
git pull --autostash --recurse-submodule
cd ..
echo ""

echo "##### Moving necessary files for building"
mv -v ./qmk_firmware/keyboards/dz60 ./qmk_firmware/keyboards/dz60.bak
cp -vr ./dz60 ./qmk_firmware/keyboards/dz60
echo ""

echo "##### Building board"
qmk compile -c -kb dz60 -km gsegt -j 16
echo ""

echo "##### Removing the temporary keyboard"
rm -vfr ./qmk_firmware/keyboards/dz60
mv -v ./qmk_firmware/keyboards/dz60.bak ./qmk_firmware/keyboards/dz60
echo ""

echo "##### Moving the compile results to the build folder"
mkdir -vp builds
mv -v ./qmk_firmware/dz60_gsegt.hex ./builds/dz60_gsegt.hex
echo ""

echo "##### Cleaning qmk build files"
qmk clean
