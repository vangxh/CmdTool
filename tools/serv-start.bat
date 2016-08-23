@echo off

echo Starting Redis
set current=%cd%
cd %CmdTool_ROOT%\serv\redis
RunHiddenConsole redis-server.exe redis.conf
RunHiddenConsole redis-cli.exe -h 127.0.0.1 -p 6379
cd /d %current%

echo Starting MariaDB
RunHiddenConsole %CmdTool_ROOT%\serv\mariadb-10.1.8\bin\mysqld.exe

echo Starting Php
RunHiddenConsole %CmdTool_ROOT%\serv\php-7.0.6\php-cgi.exe -b 127.0.0.1:9000 -c %CmdTool_ROOT%\serv\php-7.0.6\php.ini

echo Starting Nginx
RunHiddenConsole %CmdTool_ROOT%\serv\nginx\nginx.exe -p %CmdTool_ROOT%/serv/nginx