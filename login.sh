#!/bin/bash

welcomer($user){
	echo "Welcome back $user"
}

checker($username, $password){
	if [ $username = 'root' ];
	then
		if [ $password = 'root' ];
		then
			welcomer "$username"
		fi
	fi
}

main(){
	read -p "Enter username: " user
	read -p "Enter password: " pass

	checker "$user" "$pass"
}

main
