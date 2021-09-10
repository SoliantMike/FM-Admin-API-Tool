# Install PHP 7 for FileMaker Server 19.2
# tested on Windows Server 2019 with a clean install of FMS 19.2
#
# Claris notes here: https://support.claris.com/s/article/PHP-bundling-deprecation-and-removal-from-FileMaker-Server?language=en_US
# 

# option: stop FMS while installing, also commented at the end to start
# c:\windows\system32\cmd.exe /c net stop "FileMaker Server"

cd "C:\Program Files\FileMaker\FileMaker Server\Web Publishing\publishing-engine"

Start-BitsTransfer -Source https://windows.php.net/downloads/releases/php-7.4.23-nts-Win32-vc15-x64.zip -Destination php.zip

Expand-Archive -Path "C:\Program Files\FileMaker\FileMaker Server\Web Publishing\publishing-engine\php.zip" -DestinationPath php

cd "C:\Program Files\FileMaker\FileMaker Server\Web Publishing\publishing-engine\php"

copy php.ini-production php.ini

$inifile = "C:\Program Files\FileMaker\FileMaker Server\Web Publishing\publishing-engine\php\php.ini"
$bytes =  "`n`n" + 'default_charset = "utf-8"' + "`n"
[IO.File]::AppendAllText($inifile, $bytes)
$bytes = 'include_path = ".;C:\Program Files\FileMaker\FileMaker Server\Web Publishing\publishing-engine\php\PEAR;C:\Program Files\FileMaker\FileMaker Server\Web Publishing\publishing-engine\php\FileMaker;C:\Program Files\FileMaker\FileMaker Server\Web Publishing\publishing-engine\php"' + "`n"
[IO.File]::AppendAllText($inifile, $bytes)
$bytes = 'curl.cainfo = "C:\Program Files\FileMaker\FileMaker Server\CStore\root.pem"' + "`n"
[IO.File]::AppendAllText($inifile, $bytes)
$bytes = 'extension_dir = "C:\Program Files\FileMaker\FileMaker Server\Web Publishing\publishing-engine\php\ext"' + "`n"
[IO.File]::AppendAllText($inifile, $bytes)
$bytes = 'enable_dl = On' + "`n"
[IO.File]::AppendAllText($inifile, $bytes)
$bytes = 'extension = php_curl.dll' + "`n"
[IO.File]::AppendAllText($inifile, $bytes)
$bytes = 'extension = php_openssl.dll' + "`n"
[IO.File]::AppendAllText($inifile, $bytes)

cd "C:\Program Files\FileMaker\FileMaker Server\Web Publishing\publishing-engine"

Expand-Archive -Path "C:\Program Files\FileMaker\FileMaker Server\Web Publishing\FM_API_for_PHP_Standalone.zip" -DestinationPath php

setx /m path "$Env:PATH;C:\Program Files\FileMaker\FileMaker Server\Web Publishing\publishing-engine\php;"

# Optional: pear install and config...
# cd "C:\Program Files\FileMaker\FileMaker Server\Web Publishing\publishing-engine\php"
# Start-BitsTransfer -Source https://pear.php.net/go-pear.phar -Destination go-pear.phar
# c:\windows\system32\cmd.exe /c 'C:\Program Files\FileMaker\FileMaker Server\Web Publishing\publishing-engine\php\php.exe' go-pear.phar

# c:\windows\system32\cmd.exe /c net start "FileMaker Server"
# fmsadmin -v
# fmsadmin SET CWPCONFIG ENABLEPHP=true
