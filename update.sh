#!/bin/bash
echo "Cek koneksi internet ..."

# Cek ping ke google sekali
if ping -c 1 google.com &> /dev/null 
# &> /dev/null digunakan agar hasil ping tidak mengotori layar terminal

then
	echo "Internet tersambung"
	sudo apt update && sudo apt upgrade
	echo "Aplikasi telah up-to-date"
else
	echo "Maaf, internet putus. Update dibatalkan"
fi
