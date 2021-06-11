#!/bin/bash
git pull
rm ./Packages
touch ./Packages
dpkg-scanpackages deb ./deb > Packages
bzip2 -c9 Packages > Packages.bz2
echo "Updated Packages"


# rm ./Packages
# ./dpkg-scanpackages deb / > Packages
# rm ./Packages.bz2
# bzip2 -fks Packages
