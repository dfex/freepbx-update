#!/bin/sh
# Pull down all updates ahead of upgrade

UPGRADESDIR="/var/tmp/freepbx-upgrades"

if [ -d $UPGRADESDIR ]
then
	echo "The directory $UPGRADESDIR already exists."
	exit 1
else 
	mkdir $UPGRADESDIR
fi

cd $UPGRADESDIR
wget http://upgrades.freepbxdistro.org/stable/1.1009.210.62/upgrade-1.1009.210.62-2.sh
wget http://upgrades.freepbxdistro.org/stable/1.1010.210.62/upgrade-1.1010.210.62-1.sh
wget http://upgrades.freepbxdistro.org/stable/1.1010.210.62/upgrade-1.1010.210.62-2.sh
wget http://upgrades.freepbxdistro.org/stable/1.1010.210.62/upgrade-1.1010.210.62-3.sh
wget http://upgrades.freepbxdistro.org/stable/1.1010.210.62/upgrade-1.1010.210.62-4.sh
wget http://upgrades.freepbxdistro.org/stable/1.1010.210.62/upgrade-1.1010.210.62-5.sh
wget http://upgrades.freepbxdistro.org/stable/2.210.62/upgrade-2.210.62-1.sh
wget http://upgrades.freepbxdistro.org/stable/2.210.62/upgrade-2.210.62-2.sh
wget http://upgrades.freepbxdistro.org/stable/2.210.62/upgrade-2.210.62-3.sh
wget http://upgrades.freepbxdistro.org/stable/2.210.62/upgrade-2.210.62-4.sh
wget http://upgrades.freepbxdistro.org/stable/2.210.62/upgrade-2.210.62-5.sh
wget http://upgrades.freepbxdistro.org/stable/2.210.62/upgrade-2.210.62-6.sh
wget http://upgrades.freepbxdistro.org/stable/2.210.62/upgrade-2.210.62-7.sh
wget http://upgrades.freepbxdistro.org/stable/2.210.62/upgrade-2.210.62-100.sh
wget http://upgrades.freepbxdistro.org/stable/3.211.63/upgrade-3.211.63-8.sh
wget http://upgrades.freepbxdistro.org/stable/3.211.63/upgrade-3.211.63-9.sh
wget http://upgrades.freepbxdistro.org/stable/3.211.63/upgrade-3.211.63-10.sh
wget http://upgrades.freepbxdistro.org/stable/4.211.64/upgrade-3.211.63-to-4.211.64-1.sh
wget http://upgrades.freepbxdistro.org/stable/4.211.64/upgrade-4.211.64-2.sh
wget http://upgrades.freepbxdistro.org/stable/4.211.64/upgrade-4.211.64-3.sh
wget http://upgrades.freepbxdistro.org/stable/4.211.64/upgrade-4.211.64-4.sh
wget http://upgrades.freepbxdistro.org/stable/4.211.64/upgrade-4.211.64-5.sh
wget http://upgrades.freepbxdistro.org/stable/4.211.64/upgrade-4.211.64-6.sh
wget http://upgrades.freepbxdistro.org/stable/4.211.64/upgrade-4.211.64-7.sh
wget http://upgrades.freepbxdistro.org/stable/4.211.64/upgrade-4.211.64-8.sh
wget http://upgrades.freepbxdistro.org/stable/4.211.64/upgrade-4.211.64-9.sh
wget http://upgrades.freepbxdistro.org/stable/4.211.64/upgrade-4.211.64-10.sh
wget http://upgrades.freepbxdistro.org/stable/5.211.65/upgrade-4.211.64-to-5.211.65-1.sh
wget http://upgrades.freepbxdistro.org/stable/5.211.65/upgrade-5.211.65-2.sh
wget http://upgrades.freepbxdistro.org/stable/5.211.65/upgrade-5.211.65-3.sh
wget http://upgrades.freepbxdistro.org/stable/5.211.65/upgrade-5.211.65-4.sh
wget http://upgrades.freepbxdistro.org/stable/5.211.65/upgrade-5.211.65-5.sh
wget http://upgrades.freepbxdistro.org/stable/5.211.65/upgrade-5.211.65-6.sh
wget http://upgrades.freepbxdistro.org/stable/5.211.65/upgrade-5.211.65-7.sh
wget http://upgrades.freepbxdistro.org/stable/5.211.65/upgrade-5.211.65-8.sh
wget http://upgrades.freepbxdistro.org/stable/5.211.65/upgrade-5.211.65-9.sh
wget http://upgrades.freepbxdistro.org/stable/5.211.65/upgrade-5.211.65-10.sh
wget http://upgrades.freepbxdistro.org/stable/5.211.65/upgrade-5.211.65-11.sh
wget http://upgrades.freepbxdistro.org/stable/5.211.65/upgrade-5.211.65-12.sh
wget http://upgrades.freepbxdistro.org/stable/5.211.65/upgrade-5.211.65-13.sh
wget http://upgrades.freepbxdistro.org/stable/5.211.65/upgrade-5.211.65-14.sh
wget http://upgrades.freepbxdistro.org/stable/5.211.65/upgrade-5.211.65-15.sh
wget http://upgrades.freepbxdistro.org/stable/5.211.65/upgrade-5.211.65-16.sh
wget http://upgrades.freepbxdistro.org/stable/5.211.65/upgrade-5.211.65-17.sh
wget http://upgrades.freepbxdistro.org/stable/5.211.65/upgrade-5.211.65-18.sh
wget http://upgrades.freepbxdistro.org/stable/5.211.65/upgrade-5.211.65-19.sh
wget http://upgrades.freepbxdistro.org/stable/5.211.65/upgrade-5.211.65-20.sh
wget http://upgrades.freepbxdistro.org/stable/5.211.65/upgrade-5.211.65-21.sh
wget http://upgrades.freepbxdistro.org/stable/6.12.65/upgrade-5.211.65-to-6.12.65-20.sh
wget http://upgrades.freepbxdistro.org/stable/6.12.65/upgrade-6.12.65-21.sh
wget http://upgrades.freepbxdistro.org/stable/6.12.65/upgrade-6.12.65-22.sh
wget http://upgrades.freepbxdistro.org/stable/6.12.65/upgrade-6.12.65-23.sh
wget http://upgrades.freepbxdistro.org/stable/6.12.65/upgrade-6.12.65-24.sh
wget http://upgrades.freepbxdistro.org/stable/6.12.65/upgrade-6.12.65-25.sh
wget http://upgrades.freepbxdistro.org/stable/6.12.65/upgrade-6.12.65-26.sh
wget http://upgrades.freepbxdistro.org/stable/6.12.65/upgrade-6.12.65-27.sh
chmod +x upgrade*.sh
echo "Update downloads completed..."

