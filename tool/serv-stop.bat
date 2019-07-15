@echo off

if /i "%param%"=="" set param=%*

set tof=0

if /i "%param%"=="redis" (
    set tof=1
    goto redis
)

if /i "%param%"=="mysql" (
    set tof=1
    goto mysql
)

if /i "%param%"=="php" (
    set tof=1
    goto php
)

if /i "%param%"=="nginx" (
    set tof=1
    goto nginx
)

:redis
    echo Stoping Redis
    taskkill /f /im redis-cli.exe > nul
    taskkill /f /im redis-server.exe > nul
    if /i %tof%==1 goto end
    
:mysql
    echo Stoping Mysql
    taskkill /f /im mysqld.exe > nul
    if /i %tof%==1 goto end
    
:php
    echo Stopping Php
    taskkill /f /im php-cgi.exe > nul
    if /i %tof%==1 goto end
    
:nginx
    echo Stopping Nginx
    taskkill /f /im nginx.exe > nul
    if /i %tof%==1 goto end
    
:end