#!/bin/bash

# Cek apakah ini folder Git
if [ ! -d ".git" ]; then
	echo "Ini bukan folder Git! Jalankan 'git init' dulu."
	exit 1
fi

# Cek apakah ada file .gitignore
if [ ! -f ".gitignore" ]; then
	echo "Peringatan: .gitignore tidak ditemukan!"
	echo "Apaka kamu tetap ingin melakukan push tanpa perlindungan? (y/n)"
	read JAWABAN

	if [ "$JAWABAN" != "y" ]; then
		echo "Push dibatalkan. Silahkan buat .gitignore dulu"
		exit 1
	fi
fi

# Minta pesan commit
echo "Masukkan pesan commit"
read PESAN

# Jalankan Git
git add .
git commit -m "$PESAN"
echo "Sedang mengirim ke GitHub..."
git push origin master
echo "Selesai! Tugasmu aman di GitHub. dengan pesan : '$PESAN'"
