@echo off
echo Stoping Redis
taskkill /f /im redis-cli.exe > nul
taskkill /f /im redis-server.exe > nul
echo Stoping MariaDB
taskkill /f /im mysqld.exe > nul
echo Stopping Nginx
taskkill /f /im nginx.exe > nul
echo Stopping PHP FastCGI
taskkill /f /im php-cgi.exe > nul