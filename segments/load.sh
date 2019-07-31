# Print the average load.

run_segment() {
	# uptime | cut -d "," -f 4 | cut -d ":" -f2- | sed -e "s/^[ \t]*//"
    uptime | awk '{print $10}' | awk -F \, '{print $1"."$2}'
	exit 0
}
