#!/bin/sh
###############################################################################
# Copyright (C) 2015-2021 notify-send.sh authors (see AUTHORS file)
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

################################################################################
## Globals (Comprehensive)

# Symlink script resolution via coreutils (exists on 95+% of linux systems.)
SELF=$(readlink -n -f "$0");
PROCDIR="$(dirname "$SELF")";
APPNAME="$(basename "$SELF")";
TMP="${XDG_RUNTIME_DIR:-/tmp}";

################################################################################
## Imports

################################################################################
## Functions

################################################################################
## Main Script

# Well, long story short, this is going to be a real pain to implement.
# First we need to ensure that every instance of

# TODO: Find current users GUI session client, and determine what
#       notification server it's running. We need to launch that server
#       in an envrionment where we can test each shell for compatability.
#       The most likely candidate would be within a chroot. But using
#       a chroot would require a special user intended to initialize the
#       Desktop. I'm not sure if any CI envrionments are robust enough
#       to offer that level of account control. I'm also unsure of the
#       resource cost for initializing the environment. 
