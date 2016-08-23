@echo off & setlocal EnableDelayedExpansion
rem author=Õı–°∫œ

if "%2"=="" (
  set name=%~1
  set cmdline=%1 -o !name:~0,-3!min%~x1
) else (
  set cmdline=%1 -o %2
)
call java -jar %SHELL_ROOT%bin\yuicompressor-2.4.8.jar %cmdline%

endlocal