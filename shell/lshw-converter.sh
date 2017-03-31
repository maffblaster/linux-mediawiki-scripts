#!/bin/bash

# Takes input from lshw via standard in and outputs a pretty MediaWiki markup table to standard out.
# Redirect into a file then paste to the wiki.

# 

# Check for the existance of stdin
if [[ -t 0 ]]; then
    echo "This script was not meant to be called directly!"
    echo "Redirect lshw  into it!"
    exit 1
else
    while read -r LINE ; do

		# CPU?
		CPU=$(echo "${LINE}" | grep --context 3 "\-cpu" | grep "product" | cut -d ":" -f 2)

		# Table header
		echo "
		{| class="table table-condensed table-striped"
		! scope="col" width="20%" | Device
		! scope="col" width="20%" | Make/model
		! scope="col" width="10%" | Status
		! scope="col" width="10%" | Bus ID
		! scope="col" width="10%" | Kernel driver(s)
		! scope="col" width="10%" | Kernel version
		! scope="col" width="20%" | Notes
		"
		# 

		# Content
		echo "
		|-
		| $DEVICE
		| $MODEL
		| {{Yes|$STATUS}}
		| $BUS_ID
		| $KERNEL_DRIVER
		| $KERNEL_VERSION
		| N/A
		|-

		"

		# End
		echo "
		|}
		" 

    done
fi


