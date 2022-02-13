#!/usr/bin/env Rscript

# ------------------------------------------------------------------------------
# Author: ...
# Email: ...
# Version: X.Y.Z
# Description: ...
# ------------------------------------------------------------------------------


suppressMessages(library(argparser))

parser = arg_parser('...', name = 'script.R')

parser = add_argument(parser, arg = 'mandatory',
	help = 'Mandatory positional argument.')

parser = add_argument(parser, arg = '--elective', short = '-e', type = class(0),
	help = 'Elective argument.', default = 1, nargs = 1)

p = parse_args(parser)

# RUN ==========================================================================

print(p)

################################################################################
