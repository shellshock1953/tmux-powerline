# Prints current ping to Google public DNS
run_segment() {
ping -c 1 -W 5 github.com > /dev/null 2>&1
if [[ "$?" -ne 0 ]]; then
	echo "NO_NET"
	exit 0
fi
if [[ "$?" -eq 0 ]]; then
	MS=`ping -c 1 8.8.8.8 | head -2 | tail -1 | cut -d'=' -f4-`
	echo $MS
    return 0
fi
}
