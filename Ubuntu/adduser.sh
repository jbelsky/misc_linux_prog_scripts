#!/bin/bash

# Note: System configuration file is in /etc/adduser.conf

# Add a user
usrID="jabll2"
home_dir="/data/usr/local/home/${usrID}"

# Generate a random password
NEW_PASSWORD=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 12)
printf "User %s initial password will be:\t\t%s\n\n" "$usrID" "$NEW_PASSWORD"


sudo adduser --home $home_dir $usrID

#sudo passwd $usrID

# Delete user
delete_usr () {

	if [ -z $2 ] && [ $2 == "Y" ]; then
		sudo deluser --remove-home $1
	else
		sudo deluser $1
	fi

}
