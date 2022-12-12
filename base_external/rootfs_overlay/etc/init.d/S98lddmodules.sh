#! /bin/sh

case "$1" in
    start)
     	/usr/bin/module_load faulty
        /usr/bin/scull_load
	/usr/bin/aesdchar_load aesdchar
	modprobe hello
        ;;
    stop)
        /usr/bin/module_unload faulty
        /usr/bin/scull_unload
	/usr/bin/aesdchar_unload aesdchar
	rmmod hello
        ;;
    *)
	echo "Usage: $0 {start|stop}"
    exit 1
esac

exit 0
