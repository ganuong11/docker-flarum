#!/bin/bash#


while true; do

	read -p "Do you want to proceed? (yes/no) " yn

	case $yn in 
		yes ) echo ok, we will proceed;
			break;;
		no ) echo exiting...;
			exit;;
		* ) echo invalid response;;
	esac

done

echo "cleaning up..."
rm -rf ./flarum/assets/*
rm -rf ./flarum/assets/._flarum-installed.lock
rm -rf ./flarum/extensions/*
rm -rf ./flarum/extensions/.cache
rm -rf ./flarum/storage/logs/*
rm -rf ./flarum/db/*
rm -rf ./flarum/db/.*
echo "done!"