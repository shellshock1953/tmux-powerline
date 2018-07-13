# Print the average load.

run_segment() {
	uptime | cut -d "," -f 4 | cut -d ":" -f2- | sed -e "s/^[ \t]*//"
	exit 0
}
