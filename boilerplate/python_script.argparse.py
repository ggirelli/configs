#!/usr/bin/env python

# ------------------------------------------------------------------------------
# Author: ...
# Email: ...
# Version: X.X.X
# Date: YYYYMMDD
# Project: ...
# Description: ...
# ------------------------------------------------------------------------------


import argparse

parser = argparse.ArgumentParser(description="Description...")

parser.add_argument("test", type=str, nargs=1, help="Example.")
parser.add_argument(
    "-e", type=int, nargs=1, metavar="e", help="""Example default.""", default=[0]
)
parser.add_argument(
    "-u",
    action="store_const",
    dest="u",
    const=True,
    default=False,
    help="Example flag.",
)

args = parser.parse_args()

# RUN ==========================================================================

print(args)

################################################################################
