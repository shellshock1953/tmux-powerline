# Print root space
run_segment() {
    df -h | grep ' /$' | cut -d'%' -f1 | rev | cut -d' ' -f3 | rev
	exit 0
}
