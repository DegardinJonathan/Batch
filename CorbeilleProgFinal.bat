@echo off
set /a "VAR1=0"
for /r "%systemdrive%\$Recycle.bin" %%i in (*.*)do echo Taille du fichier %%i = %%~zi octets & set /a "VAR1 = VAR1+%%~zi"
echo Taille : %VAR1% octets
if %VAR1% GEQ 1000 rd /s /q %systemdrive%\$Recycle.bin
