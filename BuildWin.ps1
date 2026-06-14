./Clear.ps1
python -m PyInstaller --onefile --windowed --noconsole --icon=plague-inc-evolved.ico NoCompatibleToInstall.py
python -m PyInstaller --onefile --windowed --noconsole --icon=plague-inc-evolved.ico PlayGame.py
echo v1.23.0.8 > GameVersion.txt

# Copiar archivos necesarios a la carpeta dist
Copy-Item PlayGame.json -Destination dist\ -Force
if (Test-Path "plague-inc-evolved.ico") { Copy-Item "plague-inc-evolved.ico" -Destination "dist\PlayGame.ico" -Force }
if (Test-Path "plague-inc-evolved.png") { Copy-Item "plague-inc-evolved.png" -Destination "dist\PlayGame.png" -Force }

Write-Host "Compilacion y copiado completado."