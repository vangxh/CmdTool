@echo off
@color 0a
rem @author ��С��

rem start.exe���Զ����ô��ļ�

mode con lines=30 cols=79

set Path=%Path%;%ROOT%tool\node;

set Path=%ROOT%tool\lib\jre\bin;%ROOT%tool\lib\jre\lib;%ROOT%tool\serv\php;%ROOT%tool\serv\mysql\bin;%ROOT%tool\serv\redis;%ROOT%tool\serv\nginx;%Path%