#!/bin/sh
# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (c) 2009 FUJITSU LIMITED
# Author: Li Zefan <lizf@cn.fujitsu.com>

trap exit USR1

while true; do
	mount -t cgroup -o ns xxx cgroup/ > /dev/null 2>&1
	rmdir cgroup/[1-9]* > /dev/null 2>&1
	umount cgroup/ > /dev/null 2>&1
done
