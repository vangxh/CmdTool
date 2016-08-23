@echo off & setlocal EnableDelayedExpansion
rem author=Õı–°∫œ

if "%3"=="-m" (
  set cmdline=--js=%1 --js_output_file= %2
) else (
  if "%2"=="" (
    set name=%~1
    set cmdline=--js %1 --js_output_file !name:~0,-2!min.js
  ) else (
    set cmdline=--js %1 --js_output_file %2
  )
)
call java -jar %SHELL_ROOT%bin\compiler.jar %cmdline%

endlocal