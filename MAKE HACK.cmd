cd %~dp0
copy "FE8_clean.gba" "FE8_mod.gba"
cd "%~dp0EventAssembler"
ColorzCore A FE8 "-output:%~dp0FE8_mod.gba" "-input:%~dp0main.event" "--nocash-sym:%~dp0FE8_mod.sym"

break "%~dp0temp.sym"
type "%~dp0FE8_mod.sym" >> "%~dp0temp.sym"
del "%~dp0FE8_mod.sym.sym"

python3 "%~dp0UnsetThumbBitInSymbolFile.py" "%~dp0temp.sym" "%~dp0FE8_mod.sym"

del "%~dp0temp.sym"
type "%~dp0FE8_clean.sym" >> "%~dp0FE8_mod.sym"
pause