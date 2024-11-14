if [ $# == 0 ] ; then
	cmd=""
	args=""
else
	cmd="-c"
	args="\"$@\""
fi

export TERMUX_PREFIX=$(cd ; cd ../.. ; pwd)
eval proot-distro login ubuntu \
	--isolated \
	-- bash $cmd $args
