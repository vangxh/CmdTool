@echo off
rem @author ��С��

if not exist %ROOT%home\%USERNAME%\.ssh mkdir %ROOT%home\%USERNAME%\.ssh
%ROOT%tool\lib\bin\rsync.exe %*