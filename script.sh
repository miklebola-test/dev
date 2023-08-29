#!/bin/bash

local_head=$(git rev-parse HEAD)
remote_head=$(git ls-remote origin HEAD | awk '{ print $1 }')

if [ "$local_head" = "$remote_head" ]; then
	echo "repo is up to date"
	echo $local_head
	echo $remote_head
else
	echo "repo is not up to date"
	echo $local_head
	echo $remote_head
	echo "git pull"
	git pull
	echo "done"
fi
