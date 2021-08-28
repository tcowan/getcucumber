#!/bin/bash

echo -e "This script will attempt to install cucumber on this system.\n\nYouwill need root access."
if [ ! -f Gemfile  ]
	then
		echo -e "\nCreating a simple Gemfile to aid in installing Cucumber"
		echo -e "source 'https://rubygems.org'\ngroup :test do\n\tgem 'cucumber'\n\tgem 'aruba'\nend\n" >Gemfile
fi
sudo apt-get update
sudo apt-get -y install ruby-full build-essential
echo "Installing bundler..."
gem install bundler
bundle update
echo -e "\n\nCucumber should now be installed."
