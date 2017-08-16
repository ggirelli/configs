#!/usr/bin/env bash

# ------------------------------------------------------------------------------
# 
# Author: ...
# Email: ...
# Version: X.X.X
# Date: YYYYMMDD
# Project: ...
# Description: ...
# 
# ------------------------------------------------------------------------------



# ENV VAR ======================================================================

export LC_ALL=C

# PARAMS =======================================================================


# Help string
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

# Default values
default=10
flag=false

# Parse options
while getopts hfi:d: opt; do
	case $opt in
		h)
			# Help page
			echo -e "$helps"
			exit 0
		;;
		f)
			# Flag
			flag=true
		;;
		i)
			# Input
			input=$OPTARG
		;;
		d)
			# Default
			default=$OPTARG
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

# END ==========================================================================

################################################################################
