@echo off
echo Starting Shell %~f0
set SCRIPTS=%~dp0
set THIS_SCRIPT=%~0

cd /D %SCRIPTS%

:: Standard PATH von Windows  !!!!!  N I C H T  ÄNDERN !!!!!
set STDPATH=%SystemRoot%\system32;%SystemRoot%;%SystemRoot%\System32\Wbem;%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\

set PYTHON=C:\Tools\Python
set PYTHON_VERSION=3.14.2
set PYTHON_HOME=%PYTHON%\%PYTHON_VERSION%
set VENV=%PYTHON%\venvs.%PYTHON_VERSION%


set timestring=%TIME: =0% 
For /f "tokens=1-3 delims=. " %%a in ('date /t') do (set "mydate=%%c.%%b.%%a")
For /f "tokens=1-2 delims=/:" %%a in ("%timestring%") do (set "mytime=%%a.%%b")
echo Starting %VERSION% %~f0 creating %BATCH%; %mydate%, %mytime% 

set "THIS_ENV=python_cyberweek.%mydate%.%mytime%"
SET "BATCH=%SCRIPTS%\start_%THIS_ENV%.bat"

set PATH=%STDPATH%;%PYTHON_HOME%;%PYTHON_HOME%\Scripts

python -m venv %VENV%\%THIS_ENV%
echo Created virtual environment %VENV%\%THIS_ENV%

echo call %VENV%\%THIS_ENV%\Scripts\activate.bat
call "%VENV%\%THIS_ENV%\Scripts\activate.bat"
python -m pip install termcolor notebook jupyterlab matplotlib seaborn pandas scikit-learn scipy sympy numpy
echo Virtual environment %VENV%\%THIS_ENV% activated and packages installed.

set "line=doskey frz=pip freeze ^> requirements.txt"

setlocal EnableDelayedExpansion
(
echo @echo off
echo echo Created by %THIS_SCRIPT% %VERSION%, %mydate%, %mytime%
echo set "PATH=%PATH%"
echo call %VENV%\%THIS_ENV%\Scripts\activate.bat

echo cd %SCRIPTS%
echo doskey ...=cd ..\..
echo doskey ..=cd..
echo doskey ll=dir

echo !line!
echo cmd.exe /K title %THIS_ENV%
) > %BATCH%

echo Created batch file %BATCH% to start the environment.

title %THIS_ENV%
%comspec% /K


