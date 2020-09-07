cd %temp%
set "programf=%programfiles%"
if %PROCESSOR_ARCHITECTURE%==AMD64 set "programf=%programfiles(x86)%"
dir /b "%programf%\Microsoft\Edge\Application" |SORT /R > list.txt
FOR /F " usebackq delims==" %i IN (list.txt) DO start /WAIT /MIN cmd /c "%programf%\Microsoft\Edge\Application\%i\Installer\setup.exe" --uninstall --system-level --verbose-logging --force-uninstall
del list.txt


cd %temp%
dir /b "%HOMEDRIVE%\Users" > list.txt
FOR /F " usebackq delims==" %i IN (list.txt) DO rd /q /s "%HOMEDRIVE%\Users\%i\AppData\Local\Microsoft\Edge\"
del list.txt
