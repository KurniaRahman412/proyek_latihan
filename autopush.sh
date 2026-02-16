#!/bin/bash

# Minta pesan commit
echo "Masukkan pesan commit"
read PESAN

# Jalankan Git
git add .
git commit -m "$PESAN"

echo "Sedang mengirim ke GitHub..."

git push origin master

echo "Selesai! Tugasmu aman di GitHub."

