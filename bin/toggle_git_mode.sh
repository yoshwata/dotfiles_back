#! /bin/bash
# toggle git mode
# git mode is useful but slightly slow

if [ -z "$GIT_MODE" ] || [ $GIT_MODE == false ] ; then
	export GIT_MODE=true
else
	export GIT_MODE=false
fi

exec $SHELL -l
