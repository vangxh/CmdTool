@echo off
@color 0a
rem @author 王小合

rem start.exe会自动调用此文件

mode con lines=30 cols=79

set Path=%Path%;%ROOT%tool\node;

set Path=%ROOT%tool\lib\jre\bin;%ROOT%tool\lib\jre\lib;%ROOT%tool\serv\php;%ROOT%tool\serv\mysql\bin;%ROOT%tool\serv\redis;%ROOT%tool\serv\nginx;%Path%