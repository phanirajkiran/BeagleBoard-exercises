# This will make the driver
apt-get install linux-headers-`uname -r`
cd driver
make

# Here's how to get SPI working under Jessie
# Edit /boot/uEnv.txt and removed the comment on the following line:

##BeagleBone Black: HDMI (Audio/Video) disabled:
dtb=am335x-boneblack-emmc-overlay.dtb

# This will disable the HDMI and free up the pin needed for the SPI
# Then later in the file add:

##Example v4.1.x
#cape_disable=bone_capemgr.disable_partno=
cape_enable=bone_capemgr.enable_partno=BB-SPIDEV1

# This will enable the SPI device we need.
