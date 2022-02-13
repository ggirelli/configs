#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# Author: ...
# Email: ...
# Version: X.X.X
# Date: YYYYMMDD
# Project: ...
# Description: ...
# ------------------------------------------------------------------------------



export LC_ALL=C

helps="
usage: ./script.sh [-h] -i input [-d default][-f]

 Description:
  ...

 Mandatory arguments:
  -i indir	Input.

 Optional arguments:
  -h	Show this help page.
  -f	Flag option.
  -d default	Param with default value. Default: 10
"

default=10
flag=false

while getopts hfi:d: opt; do
	case $opt in
		h)
			echo -e "$helps"
			exit 0
		;;
		f)
			flag=true
		;;
		i)
			input=$OPTARG
		;;
		d)
			default=$OPTARG
		;;
		*)
			echo "Unrecognized flag: $OPTARG"
			exit 1
		;;
	esac
done

# Check mandatory options
if [ -z "$input" ]; then
	echo -e "$helps\n!!! ERROR! Missing mandatory -i option.\n"
	exit 1
fi

# Additional checks
# ...

# RUN ==========================================================================

echo "$flag"
echo "$default"

################################################################################
