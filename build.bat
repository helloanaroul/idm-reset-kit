@echo off
cls
echo ========================================
echo    IDM Trial Reset - Build Script
echo ========================================
echo.

REM Check if AutoIt is installed
if not exist "C:\Program Files (x86)\AutoIt3\Aut2Exe\Aut2exe.exe" (
    echo ERROR: AutoIt3 not found!
    echo Please install AutoIt v3 from https://www.autoitscript.com/site/autoit/downloads/
    echo.
    pause
    exit /b 1
)

echo Building IDM Trial Reset...
echo.

REM Set paths
set "AUTOIT_COMPILER=C:\Program Files (x86)\AutoIt3\Aut2Exe\Aut2exe.exe"
set "SOURCE_FILE=src\IDM Trial Reset.au3"
set "OUTPUT_FILE=IDM_Trial_Reset.exe"
set "ICON_FILE=src\IDM.ico"

REM Check if source file exists
if not exist "%SOURCE_FILE%" (
    echo ERROR: Source file not found: %SOURCE_FILE%
    echo Current directory: %CD%
    echo.
    pause
    exit /b 1
)

REM Create build directory if it doesn't exist
if not exist "build" mkdir "build"

REM Build the executable
echo Compiling %SOURCE_FILE%...
echo Output: build\%OUTPUT_FILE%
echo.

"%AUTOIT_COMPILER%" /in "%SOURCE_FILE%" /out "build\%OUTPUT_FILE%" /icon "%ICON_FILE%" /comp 4 /upx

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================
    echo    BUILD SUCCESSFUL!
    echo ========================================
    echo Executable created: build\%OUTPUT_FILE%
    echo.
    echo File size: 
    for %%A in ("build\%OUTPUT_FILE%") do echo %%~zA bytes
    echo.
    echo Build completed successfully!
) else (
    echo.
    echo ========================================
    echo    BUILD FAILED!
    echo ========================================
    echo Error code: %ERRORLEVEL%
    echo.
    echo Please check the error messages above.
)

echo.
pause