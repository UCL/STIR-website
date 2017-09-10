#! /bin/bash

cat <<EOF > STIRupdate.sh
#! /bin/sh
rm -rf /tmp/update/*
mkdir -p /tmp/update
cd /tmp/update
wget http://stir.sourceforge.net/MIC2015ShortCourse/UPDATE.sh
bash ./UPDATE.sh
EOF
chmod +x STIRupdate.sh
sudo mv /usr/local/bin/STIRupdate.sh /usr/local/bin/STIRupdateorig.sh
sudo cp STIRupdate.sh /usr/local/bin

reboot=0

echo "=============================================================="
echo "Installing additional modules for VirtualBox"
echo "  If you see a message about Configuration file /etc/X11/Xsession.d/98vboxadd-xclient"
echo "  Answer Y to install the package maintainer's version"

sudo apt-get -y install virtualbox-guest-dkms

# check if swap device used UUID
if fgrep ec03067b-8512-44d6-8f7a-92cfb4111bf5 /etc/fstab
then
    reboot=1
    echo "=============================================================="
    #echo "Fixing swap device"
    #sed -e 's#UUID.*swap.*#/dev/sda5  swap swap defaults 0 0#' /etc/fstab > ~/fstab.new
    #sudo mv /etc/fstab /etc/fstab.bak
    #sudo mv /home/stir/fstab.new /etc/fstab
fi

 echo "=============================================================="
echo "Installing amide"
sudo apt-get -y install amide

set -e
trap "echo ERROR during update. Email k.thielemans@ucl.ac.uk with as much information as you can." ERR

if true; then
  echo "=============================================================="
  echo "Updating your STIR installation"
  cd ~/devel/STIR
  git pull
  cd ~/devel/build/STIR/Release
  make -j2 install
fi
   
echo "=============================================================="
echo "Updating exercises"

mkdir -p /tmp/update
cd /tmp/update
rm -f updates.zip
wget http://stir.sourceforge.net/MIC2015ShortCourse/updates.zip
cd ~
unzip -o /tmp/update/updates.zip

cd ~/Desktop
rm -f exercises_document.pdf
ln -s ~/exercises/exercises_document.pdf .
rm -f HELP.htm
ln -s ~/exercises/HELP.htm .

# update spyder.ini if it exists (and hasn't been updated yet)
if [ -r ~/.spyder2/spyder.ini -a ! -r ~/.spyder2/spyder.ini.bak  ]; then
    echo "=============================================================="
    echo "Updating spyder preferences (will only work if Spyder wasn't running...)"
    mv ~/.spyder2/spyder.ini ~/.spyder2/spyder.ini.bak
    sed -e 's#pylab/inline/figure_format =.*#pylab/inline/figure_format = 0#'  ~/.spyder2/spyder.ini.bak > ~/.spyder2/spyder.ini
fi


echo "=============================================================="
echo "Update completed."
if [ $reboot = 1 ]; then
    echo "It is recommended to reboot your (virtual) system."
fi
echo "For a future update, type 'STIRupdate.sh' (without quotes)."

# clean-up from very first run
rm -f ~/UPDATE.sh*



