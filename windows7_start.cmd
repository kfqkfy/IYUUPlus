@echo off
:chcp 65001
title IYUUPlus
cd /d "%~dp0"
echo Docker: https://hub.docker.com/r/iyuucn/iyuuplus
echo Gitee: https://gitee.com/ledc/iyuuplus
echo Github: https://github.com/ledccn/IYUUPlus
echo QQ: 859882209 / 931954050 / 924099912
echo Token: https://iyuu.cn
echo Blog: https://www.iyuu.cn
echo Docs: http://iyuuapi.19900204.xyz/docs.php
echo.
echo "���ڼ��Դ����git�����ļ�..."
if exist "%~dp0.git\config" (
    echo "����Ϊ���Զ�����..."
    git fetch --all
    git reset --hard origin/master
    echo "������ɣ�"
) else (
    echo "��ǰIYUUPlusԴ�룬����ͨ��git��ȡ����֧���Զ�����"
)
echo.
goto :checkPHP

:checkPHP
if exist "%~dp0php\php.exe" (set PHP_BINARY=%~dp0php\php.exe) else (set PHP_BINARY=php.exe)
echo "PHP�����Ƴ���"%PHP_BINARY%
%PHP_BINARY% -v
echo.
echo "�������Ҫֹͣ�����밴����ϼ���CTRL + C"
%PHP_BINARY% windows.php
pause
goto :end

:end
rem ����
echo.