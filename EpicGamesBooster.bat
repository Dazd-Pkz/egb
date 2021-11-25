@echo off
:: var :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set path="%localappdata%\EpicGamesLauncher\Saved\Config\Windows\Engine.ini"
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
title [EGB] EpicGamesBooster - github.com/dazd-pkz
:start
cls
echo [40;35m :::::::::: ::::::::  :::::::::  
echo [40;35m :+:       :+:    :+: :+:    :+: 
echo [40;35m +:+       +:+        +:+    +:+ 
echo [40;35m +#++:++#  :#:        +#++:++#+  
echo [40;35m +#+       +#+   +#+# +#+    +#+ 
echo [40;35m #+#       #+#    #+# #+#    #+# 
echo [40;35m ########## ########  #########   EpicGamesBooster
echo.
echo [40;37mWrite a number to say how efficient you want the Boost :
echo.
echo [40;37m1) [40;32mNormal [40;33m(need less perf)
echo [40;37m2) [40;31mMaximum [40;33m(need more perf)
echo.
set /p question=[40;37m^> 
if %question%==1 (
goto :nor
) else (
if %question%==2 (
goto :max
) else (
cls
echo [40;31mWrong result!
pause > nul
goto :start
)
)

:max
(echo [Portal.BuildPatch]
echo ChunkDownloads=5
echo ChunkRetries=20
echo RetryTime=0.5) > %path%
goto :end

:nor
(echo [Portal.BuildPatch]
echo ChunkDownloads=4
echo ChunkRetries=20
echo RetryTime=0.5) > %path%
goto :end

:end
cls
if %question%==1 (
echo [40;32m[NORMAL] [40;33mBoosted!
) else (
echo [40;31m[MAXIMUM] [40;33mBoosted!
)
pause > nul