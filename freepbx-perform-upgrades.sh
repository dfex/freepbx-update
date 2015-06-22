#!/bin/bash
# Check system version and upgrade to next

OLDVERSIONFILE="/etc/asterisk/freepbxdistro-version"
NEWVERSIONFILE="/etc/schmooze/pbx-version"
UPGRADESDIR="/var/tmp/freepbx-upgrades"

if [ -f $NEWVERSIONFILE ] # Check if the "new-style" version file exists
then
	# run new (>2.x) version checks and upgrade appropriately
	CURRENTVERSION=`cat $NEWVERSIONFILE`
	echo "Detected NEW version $CURRENTVERSION"
	case "$CURRENTVERSION" in
		"2.210.62-1")
			NEWVERSION="2.210.62-2"
			;;             
		"2.210.62-2")
			NEWVERSION="2.210.62-3"
			;;             
		"2.210.62-3")
			NEWVERSION="2.210.62-4"
			;;
		"2.210.62-4")
			NEWVERSION="2.210.62-5"
			;;
		"2.210.62-5")
			NEWVERSION="2.210.62-6"
			;;
		"2.210.62-6")
			NEWVERSION="2.210.62-7"
			;;
		"2.210.62-7")
			NEWVERSION="2.210.62-100"
			;;
		"3.211.63-7")
			NEWVERSION="3.211.63-8"
			;;             
		"3.211.63-8")
			NEWVERSION="3.211.63-9"
			;;             
		"3.211.63-9")
			NEWVERSION="3.211.63-10"
			;;
		"3.211.63-10")
			NEWVERSION="3.211.63-to-4.211.64-1"
			;;
		"4.211.64-1")
			NEWVERSION="4.211.64-2"
			if [ -f "/etc/profile.rpmnew" ]
			then
				mv --force /etc/profile.rpmnew /etc/profile
				mv --force /etc/dahdi/modules.rpmnew /etc/dahdi/modules
				mv --force /etc/httpd/conf.d/freepbx.conf.rpmorig /etc/httpd/conf.d/freepbx.conf
				/sbin/reboot
			fi	
			;;             
		"4.211.64-2")
			NEWVERSION="4.211.64-3"
			;;             
		"4.211.64-3")
			NEWVERSION="4.211.64-4"
			;;
		"4.211.64-4")
			NEWVERSION="4.211.64-5"
			;;
		"4.211.64-5")
			NEWVERSION="4.211.64-6"
			;;
		"4.211.64-6")
			NEWVERSION="4.211.64-7"
			;;
		"4.211.64-7")
			NEWVERSION="4.211.64-8"
			;;
		"4.211.64-8")
			NEWVERSION="4.211.64-9"
			;;             
		"4.211.64-9")
			NEWVERSION="4.211.64-10"
			;;             
		"4.211.64-10")
			NEWVERSION="4.211.64-to-5.211.65-1"
			;;             
		"5.211.65-1")
			NEWVERSION="5.211.65-2"
			if [ -f "/etc/jail.local.rpmnew" ]
			then
				rm /etc/fail2ban/jail.local.rpmnew
				rm /etc/prosody/prosody.cfg.lua.rpmnew
				mv /etc/dahdi/modules.rpmnew /etc/dahdi/modules
				rm /etc/ntp.conf.rpmnew
				rm /etc/ssh/sshd_config.rpmnew
				/sbin/reboot
			fi	
			;;
		"5.211.65-2")
			NEWVERSION="5.211.65-3"
			;;
		"5.211.65-3")
			NEWVERSION="5.211.65-4"
			;;             
		"5.211.65-4")
			NEWVERSION="5.211.65-5"
			if [ -f "/etc/ntp.conf.rpmsave" ]
			then
				rm /etc/ntp.conf.rpmsave
			fi	
			;;             
		"5.211.65-5")
			NEWVERSION="5.211.65-6"
			;;
		"5.211.65-6")
			NEWVERSION="5.211.65-7"
			;;
		"5.211.65-7")
			NEWVERSION="5.211.65-8"
			;;
		"5.211.65-8")
			NEWVERSION="5.211.65-9"
			;;
		"5.211.65-9")
			NEWVERSION="5.211.65-10"
			;;
		"5.211.65-10")
			NEWVERSION="5.211.65-11"
			;;		
		"5.211.65-11")
			NEWVERSION="5.211.65-12"
			;;
		"5.211.65-12")
			NEWVERSION="5.211.65-13"
			;;
		"5.211.65-13")
			NEWVERSION="5.211.65-14"
			;;		
		"5.211.65-14")
			NEWVERSION="5.211.65-15"
			;;
		"5.211.65-15")
			NEWVERSION="5.211.65-16"
			;;
		"5.211.65-16")
			NEWVERSION="5.211.65-17"
			if [ -f "/etc/fail2ban/jail.local.rpmnew" ]
			then
				rm /etc/fail2ban/jail.local.rpmnew
				rm /etc/httpd/conf.d/freepbx.conf.rpmsave
				rm /var/log/mysql/mysql.log
			fi	
			;;		
		"5.211.65-17")
			NEWVERSION="5.211.65-18"
			;;
		"5.211.65-18")
			NEWVERSION="5.211.65-19"
			;;
		"5.211.65-19")
			NEWVERSION="5.211.65-20"
			if [ -f "/etc/dahdi/modules.rpmnew" ]
			then
				mv /etc/dahdi/modules.rpmnew /etc/dahdi/modules
			fi	
			;;		
		"5.211.65-20")
			NEWVERSION="5.211.65-21"
			;;
		"5.211.65-21")
			NEWVERSION="5.211.65-to-6.12.65-20"
			;;
		"6.12.65-20")
			NEWVERSION="6.12.65-21"
			;;
		"6.12.65-21")
			NEWVERSION="6.12.65-22"
			;;
		"6.12.65-22")
			NEWVERSION="6.12.65-23"
			;;
		"6.12.65-23")
			NEWVERSION="6.12.65-24"
			;;
		"6.12.65-24")
			NEWVERSION="6.12.65-25"
			;;
		"6.12.65-25")
			NEWVERSION="6.12.65-26"
			;;
		"6.12.65-26")
			NEWVERSION="6.12.65-27"
			;;
		*)        
			echo "Unknown version detected, halting.."
			exit 1         
			;;             
	esac
	NOW=$(date) 	
	echo "$NOW Upgrading to $NEWVERSION"
	sh "$UPGRADESDIR/upgrade-$NEWVERSION.sh"
	RIGHTNOW=$(date) 	
	echo "Started  :$NOW ###"
	echo "Finished :$RIGHTNOW ###"

elif [ -f $OLDVERSIONFILE ]
then # run old (<2.x) version checks and upgrade appropriately
	CURRENTVERSION=`cat $OLDVERSIONFILE`
	echo "Detected version $CURRENTVERSION"
	case "$CURRENTVERSION" in
		"1.1009.210.62-1")
			NEWVERSION="1.1009.210.62-2"
			;;             
		"1.1009.210.62-2")
			NEWVERSION="1.1010.210.62-1"
			;;             
		"1.1010.210.62-1")
			NEWVERSION="1.1010.210.62-2"
			;;
		"1.1010.210.62-2")
			NEWVERSION="1.1010.210.62-3"
			;;
		"1.1010.210.62-3")
			NEWVERSION="1.1010.210.62-4"
			;;
		"1.1010.210.62-4")
			NEWVERSION="1.1010.210.62-5"
			;;
		"1.1010.210.62-5")
			NEWVERSION="2.210.62-1"
			;; 
		*)        
			echo "Unknown version detected, halting.."
			exit 1         
			;;             
	esac
	NOW=$(date) 	
	echo "$NOW Upgrading to $NEWVERSION"
	sh "$UPGRADESDIR/upgrade-$NEWVERSION.sh"
	NOW=$(date) 	
	echo "$NOW Finished ###"
else
	echo "Unable to determine system version"
fi
