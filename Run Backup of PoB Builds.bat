@echo off
setlocal

:: Define source and destination paths
set "source=D:\Path of Building\Builds"
set "destination=D:\Path-Of-Building-Builds-Backup\Builds"

:: Remove the destination folder if it exists
if exist "%destination%" (
    echo Deleting existing destination folder...
    rmdir /s /q "%destination%"
)

:: Copy the source folder to the destination
echo Copying files...
xcopy "%source%" "%destination%" /s /e /i /y

echo Operation completed.
endlocal
pause