@echo off

if /i "%param%"=="" set param=%*

set tof=0

if /i "%param%"=="redis" (
    set tof=1
    goto redis
)

if /i "%param%"=="mysql" (
    set tof=2
    goto mysql
)

if /i "%param%"=="php" (
    set tof=3
    goto php
)

if /i "%param%"=="nginx" (
    set tof=4
    goto nginx
)

:redis
    echo Starting Redis
    set current=%cd%
    cd %ROOT%tool\serv\redis
    nohup redis-server.exe redis.conf
    cd /d %current%
    if /i %tof%==1 goto end
    
:mysql
    echo Starting Mysql
    nohup %ROOT%tool\serv\mysql\bin\mysqld.exe
    if /i %tof%==2 goto end
    
:php
    echo Starting Php
    nohup %ROOT%tool\serv\php\php-cgi.exe -b 127.0.0.1:9000 -c %ROOT%tool\serv\php\php.ini
    nohup %ROOT%tool\serv\php\php-cgi.exe -b 127.0.0.1:9001 -c %ROOT%tool\serv\php\php.ini
    if /i %tof%==3 goto end
    
:nginx
    echo Starting Nginx
    nohup %ROOT%tool\serv\nginx\nginx.exe -p %ROOT%tool\serv\nginx
    if /i %tof%==4 goto end
    
:end
    set tof=0