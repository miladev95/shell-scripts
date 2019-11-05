case $1 in
-h | --help)
	echo "USAGE : ./weather.sh -l tehran"
	;;
-l | --location)
	curl wttr.in/$2
	;;
*)
	curl wttr.in
	;;
esac
