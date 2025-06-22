#!/data/data/com.termux/files/usr/bin/bash
cd ~/KoloniBangkit2025
echo "Tes dari Termux $(date)" >> tes_otomatis.txt
git init
git branch -M main
git remote remove origin 2>/dev/null
git remote add origin git@github.com:KoloniBangkit2025/KoloniBangkit2025.git
git add .
git commit -m "Update otomatis dari Termux"
git push origin main








