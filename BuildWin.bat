Clear.bat
python -m PyInstaller --onefile --windowed --noconsole --icon=plague-inc-evolved.ico NoCompatibleToInstall.py
python -m PyInstaller --onefile --windowed --noconsole --icon=plague-inc-evolved.ico PlayGame.py
echo v1.23.0.8 > GameVersion.txt

:: Copiar archivos necesarios a la carpeta dist
copy /y PlayGame.json dist\
if exist plague-inc-evolved.ico copy /y plague-inc-evolved.ico dist\PlayGame.ico
if exist plague-inc-evolved.png copy /y plague-inc-evolved.png dist\PlayGame.png

echo Compilacion y copiado completado.