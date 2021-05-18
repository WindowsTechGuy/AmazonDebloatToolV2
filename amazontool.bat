@echo off
title AMAZON 7 7TH GEN FOR FIRE OS 5.6.X 5.4.0.1 and 5.4.0
color 0b
cls
GOTO:splashscreen
:splashscreen 
echo VERSION 1.7                                                                                                                                                          
echo          .ijj.    ::..ii.  ;i      ,tt,    .::::::    ,ii    .:: ,i,  ..       
echo          W####j  t##G###W.E##G   :E####E:  D#####W.  E###L   K##,###D tf,      
echo         j######t t##K####D####t  W######E  K######. :#####D  W##D#### tf,      
echo        .##L:;##D t###DW###KE##D  ##K;G###  tLfD##D  D#K,i##t K###D### :,       
echo            ::##E t##W  W#t  f#E     .;###    L###  t##.  ###:W##j t##          
echo          LK####K t##W  W#i  f#E   jEW####    ###L  L#W   ###,W##t i##          
echo         t##WD##E t##K  W#i  f#E  K###D###   .##W.  L#W   ###;W##t i##          
echo        :##L  ##K t##W  W#i  f#E  ##K,.###   G##,   L#W   ###;W##t i##          
echo        G#W   ##W t##W  W#i  f#E ,##t t### .######t :##i  ##K K##t i##          
echo        f##f:G###Lt##W .W#i  f#E .##K,####.,#######; D#K;t##t K##t i##          
echo        ,#####W##Gt##W  W#i  f#E  #####K##:,##EDEW#; :#####G  W##t t##          
echo         i###Di#f t##K  K#i  f#D  D###i KW ,G,    G,  E###L   K##i i##          
echo                 :                          ,ittit                              
echo                 .;.                       .,:.:;t                              
echo                  ;t,.                        . ,t                              
echo                   ,tt:.                   .:;; ;i                              
echo                      ;itii;,:..   ..:,;iiti,. :i.                              
echo                       :;iiiiiiiiiiiiititi,.   ;:                               
echo                          .;itiiiiiiiiiii,:     .                                
echo                           ..:;;;i;;,,.                    
timeout 3 > nul     
cls
color 0c
echo Starting the tool...
timeout 3 > nul       
cls
color 0b
echo         __    __  __    __    ____  _____  _   _    ____  ____  ____  ____   
echo        /__\  (  \/  )  /__\  (_   )(  _  )( \ ( )  ( ___)(_  _)(  _ \( ___)  
echo       /(__)\  )    (  /(__)\  / /_  )(_)(  ) \ (    )__)  _)(_  )   / )__)   
echo      (__)(__)(_/\/\_)(__)(__)(____)(_____)(_) \_)  (__)  (____)(_)\_)(____)  
echo       ___    ___  ____  _   _     ___  ____  _   _    ____  _____  _____  __   
echo      (__ )  (__ )(_  _)( )_( )   / __)( ___)( \ ( )  (_  _)(  _  )(  _  )(  )  
echo       / /    / /   )(   ) _ (   ( (_-. )__)  ) \ (     )(   )(_)(  )(_)(  )(__ 
echo      (_/    (_/   (__) (_) (_)   \___/(____)(_) \_)   (__) (_____)(_____)(____)
echo.--------------------------------------------------------------------------------
files\adb.exe kill-server
files\adb.exe start-server
echo.--------------------------------------------------------------------------------
files\adb.exe devices
timeout 5 > nul
files\adb.exe kill-server
cls	
color 0b
GOTO:menu

:menu
echo                   __  __  ____  _   _  __  __ 
echo                  (  \/  )( ___)( \ ( )(  )(  )
echo                   )    (  )__)  ) \  ( )(__)( 
echo                  (_/\/\_)(____)(_) \_)(______)


echo        **************************************************************
echo        * 1.Remove ads from lock screen (temporarily in FireOs5.6.X) *
echo        * 2.Install Google Play                                      *
echo        * 3.Clean data from all amazon apps                          *
echo        * 4.Install Nova Launcher                                    *
echo        * 5.Block Ota Updates (in FireOs 5.6.X is temporarily)       *
echo        * 6.Install amazon adb and fastboot drivers                  *
echo        * 7.Downgrade to FireOs 5.4                                  *
echo        * 8.Replace amazon photos with android gallery               *
echo        * 9.Uninstall amazon apps (Only FireOs 5.4.0)                *
echo        * 10.Backup/restore data and apps                            *
echo        * 11.Disable (no uninstall!) amazon apps                     *
echo        * 12.Disable: The requested action is not permitted.         *
echo        * 13.Get bootloader information                              *
echo        * 14.Extras                                                  *
echo        * 15.Root menu                                               *
echo        * 16.Visit the xda forum of this tool                        *
echo        * 17.Reboot menu                                             *
echo        * 18.Exit                                                    *
echo        **************************************************************
echo.--------------------------------------------------------------------------------
echo Warning, this tool is made for the amazon fire 7 7th gen running fire os 5.6.X
echo or fire os 5.4.0
echo.--------------------------------------------------------------------------------
set /p uni= SELECT AN OPTION:
if %uni% ==1 goto :menuads
if %uni% ==2 goto :menuplay
if %uni% ==3 goto :menuclean
if %uni% ==4 goto :menulauncher
if %uni% ==5 goto :menuota
if %uni% ==6 goto :drivers
if %uni% ==7 goto :downgrade
if %uni% ==8 goto :gallery
if %uni% ==9 goto :trashapps
if %uni% ==10 goto :backuprestore
if %uni% ==11 goto :disable
if %uni% ==12 goto :message
if %uni% ==13 goto :info
if %uni% ==14 goto :extras
if %uni% ==15 goto :rootextras
if %uni% ==16 goto :visit
if %uni% ==17 goto :menureboot
if %uni% ==18 goto :exit
:menuads
cls	
color 0b
echo     ____  ____  __  __  _____  _  _  ____      __    ____   ___ 
echo    (  _ \( ___)(  \/  )(  _  )( \/ )( ___)    /__\  (  _ \ / __)
echo     )   / )__)  )    (  )(_)(  \  /  )__)    /(__)\  )(_) )\__ \
echo    (_)\_)(____)(_/\/\_)(_____)  \/  (____)  (__)(__)(____/ (___/
echo.-------------------------------------------------------------------------------
echo This will remove ads from the lock screen.
echo In FireOs 5.6.X (no FireOs 5.6.1.0) the ads will return.
set /p uni= Do you want to continue?y/n:
if %uni% ==y goto :adsversion
if %uni% ==n goto :gomenu
echo.-------------------------------------------------------------------------------
:adsversion
cls
color 0b
echo     ____  ____  __  __  _____  _  _  ____      __    ____   ___ 
echo    (  _ \( ___)(  \/  )(  _  )( \/ )( ___)    /__\  (  _ \ / __)
echo     )   / )__)  )    (  )(_)(  \  /  )__)    /(__)\  )(_) )\__ \
echo    (_)\_)(____)(_/\/\_)(_____)  \/  (____)  (__)(__)(____/ (___/
echo.-------------------------------------------------------------------------------
echo                        *****************************
echo                        * 1.FireOs 5.4.0 and above  *
echo                        * 2.FireOs 5.6.1.0          *
echo                        * 3.FireOs 5.6.X            *
echo                        *****************************
set /p uni= Select your version of FireOs:
if %uni% ==1 goto :remove1
if %uni% ==2 goto :removeyes
if %uni% ==3 goto :remove2
:removeyes
echo.-------------------------------------------------------------------------------
echo Removing ads.....
echo.-------------------------------------------------------------------------------
files\adb.exe push apps\com.amazon.unifiedsharefacebook.apk storage/sdcard0
files\adb.exe shell pm install -r -d /sdcard/com.amazon.unifiedsharefacebook.apk
files\adb.exe shell pm clear com.amazon.kindle.kso
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.kindle.kso
files\adb.exe shell settings put global LOCKSCREEN_AD_ENABLED 0
files\adb.exe shell settings put global ksoHash 0
files\adb.exe reboot
echo COMPLETED!
pause
cls
GOTO:menu
:remove1
echo.-------------------------------------------------------------------------------
echo Removing ads.....
echo.-------------------------------------------------------------------------------
files\adb.exe kill-server
files\adb.exe start-servers
files\adb.exe shell pm uninstall -k --user 0 com.amazon.kindle.kso
files\adb.exe shell settings put global LOCKSCREEN_AD_ENABLED 0
files\adb.exe shell settings put global ksoHash 0
echo COMPLETED! Reboot to finish.
pause
cls 
GOTO:menu
:remove2
echo.-------------------------------------------------------------------------------
echo Removing ads.....
echo.-------------------------------------------------------------------------------
files\adb.exe kill-server
files\adb.exe start-servers
files\adb.exe shell pm clear com.amazon.kindle.kso
files\adb.exe shell settings put global LOCKSCREEN_AD_ENABLED 0
files\adb.exe shell settings put global ksoHash 0
pause
cls 
GOTO:menu
:menuplay
cls
color 0b
echo       ___  _____  _____  ___  __    ____    ____  __      __   _  _ 
echo      / __)(  _  )(  _  )/ __)(  )  ( ___)  (  _ \(  )    /__\ ( \/ )
echo     ( (_-. )(_)(  )(_)(( (_-. )(__  )__)    )___/ )(__  /(__)\ \  / 
echo      \___/(_____)(_____)\___/(____)(____)  (__)  (____)(__)(__)(__) 
echo.-------------------------------------------------------------------------------
echo This will install google play on the fire
echo Make sure you have activated ADB DEBUGGING,
echo and make sure you have installed the adb drivers.
set /p uni= Do you want to continue?y/n:
echo.-------------------------------------------------------------------------------
if %uni% ==y goto :playes
if %uni% ==n goto :gomenu
:gomenu
cls
goto :menu
:playes
files\adb.exe kill-server
files\adb.exe start-server
files\adb.exe shell settings put secure install_non_market_apps 1
echo [*] Installing Google Play Store apps....
echo.--------------------------------------------------------------------------------
echo [*] Installing app 1 of 4
files\adb.exe install apps\com.google.android.gsf.login.apk
echo.--------------------------------------------------------------------------------
echo [*] Installing app 2 of 4
files\adb.exe install apps\com.google.android.gsf.apk
echo.--------------------------------------------------------------------------------
echo [*] Installing app 3 of 4
files\adb.exe install apps\com.google.android.gms.apk
echo.--------------------------------------------------------------------------------
echo [*] Installing app 4 of 4
files\adb.exe install apps\com.android.vending.apk
echo [*] all apps installed, the device will be rebooted.
echo.--------------------------------------------------------------------------------
pause
files\adb.exe reboot
cls
echo When the device finishes rebooting press a key to continue
pause
cls
GOTO:menu
:menuclean
cls
color 0b
echo                 ___  __    ____    __    _   _ 
echo                / __)(  )  ( ___)  /__\  ( \ ( )
echo               ( (__  )(__  )__)  /(__)\  ) \ ( 
echo                \___)(____)(____)(__)(__)(_) \_)
echo.-------------------------------------------------------------------------------
echo This will remove data from all amazon apps
echo This can help if the storage is full and you can not install anything
set /p uni= Do you want to continue?y/n:
echo.-------------------------------------------------------------------------------
if %uni% ==y goto :cleanyes
if %uni% ==n goto :gomenu
:cleanyes
echo Removing data from amazon apps ...
echo.-------------------------------------------------------------------------------
files\adb.exe kill-server
files\adb.exe start-server
files\adb.exe shell pm clear com.amazon.venezia
files\adb.exe shell pm clear com.amazon.avod
files\adb.exe shell pm clear com.amazon.firelauncher
files\adb.exe shell pm clear com.amazon.kindle
files\adb.exe shell pm clear com.amazon.mp3
files\adb.exe shell pm clear com.amazon.kindle.kso
files\adb.exe shell pm clear com.amazon.weather
files\adb.exe shell pm clear com.amazon.photos
files\adb.exe shell pm clear org.mopria.printplugin
files\adb.exe shell pm clear com.amazon.settings.systemupdates
files\adb.exe shell pm clear com.unifiedsharetwitter
files\adb.exe shell pm clear com.kingsoft.office.amz
files\adb.exe shell pm clear com.goodreads.kindle
files\adb.exe shell pm clear com.audible.application.kindle
files\adb.exe shell pm clear com.amazon.tablet.subscriptions
files\adb.exe shell pm clear com.amazon.tahoe
files\adb.exe shell pm clear com.amazon.ags.app
files\adb.exe shell pm clear com.amazon.webapp
files\adb.exe shell pm clear com.amazon.cloud9
files\adb.exe shell pm clear com.amazon.cloud9.kids
files\adb.exe shell pm clear com.amazon.unifiedsharesinaweibo
files\adb.exe shell pm clear com.amazon.dee.app
files\adb.exe shell pm clear com.amazon.kindle.unifiedSearch
files\adb.exe shell pm clear com.amazon.unifiedsharegoodreads
files\adb.exe shell pm clear com.amazon.zico
files\adb.exe shell pm clear amazon.alexa.tablet
files\adb.exe shell pm clear com.amazon.socialplatform
files\adb.exe shell pm clear com.amazon.geo.client.maps
files\adb.exe shell pm clear com.amazon.ods.kindleconnect
files\adb.exe shell pm clear com.amazon.readynowcore
files\adb.exe shell pm clear com.amazon.pm
files\adb.exe shell pm clear com.amazon.geo.mapsv2.services
files\adb.exe shell pm clear jp.co.omronsoft.iwnnimme.mlaz
files\adb.exe shell pm clear com.amazonkcp.tutorial
echo COMPLETED! 
pause
cls
GOTO:menu
:menulauncher
cls
color 0b
echo      __      __    __  __  _   _  ___  _   _  ____  ____ 
echo     (  )    /__\  (  )(  )( \ ( )/ __)( )_( )( ___)(  _ \
echo      )(__  /(__)\  )(__)(  ) \ (( (__  ) _ (  )__)  )   /
echo     (____)(__)(__)(______)(_)\_ )\___)(_) (_)(____)(_)\_)
echo.-------------------------------------------------------------------------------
echo This will install nova launcher and launcher hijack.
echo To set Nova launcher as default you have to go to accessibility and activate:
echo To detect home press button, and nova launcher. Make sure ADB is activated!
timeout 5 > nul
start files\photo.png
set /p uni= Do you want to continue?y/n:
echo.-------------------------------------------------------------------------------
if %uni% ==y goto :launcheryes
if %uni% ==n goto :gomenu
:launcheryes
echo.-------------------------------------------------------------------------------
echo Installing Nova Launcher...
echo.-------------------------------------------------------------------------------
files\adb.exe kill-server
files\adb.exe start-server
files\adb.exe shell settings put secure install_non_market_apps 1
files\adb.exe install apps\nova.apk
files\adb.exe shell am start -n com.android.settings/.Settings\$HomeSettingsActivity
echo.-------------------------------------------------------------------------------
echo In the options that are now displayed in the fire, select nova launcher 
echo and then, press any key to continue.
pause
echo.-------------------------------------------------------------------------------
files\adb.exe install apps\hijack.apk
files\adb.exe push appwidget.sh /storage/sdcard0/
files\adb.exe shell appwidget grantbind --package com.teslacoilsw.launcher --user 0
files\adb.exe shell am start -n com.android.settings/.Settings\$AccessibilitySettingsActivity
echo COMPLETED! Now enable Nova Launcher and Launcher Hijack on accessibility.

pause
cls
GOTO:menu
:menuota
cls
color 0b
echo                          _____  ____   __    ___ 
echo                         (  _  )(_  _) /__\  / __)
echo                          )(_)(   )(  /(__)\ \__ \
echo                         (_____) (__)(__)(__)(___/
echo.-------------------------------------------------------------------------------
echo This will disable ota updates.
echo Maybe it does not work in FireOs 5.6.X so I recommend installing the app:
echo No root firewall and block the ota updates
set /p uni= Do you want to continue?y/n:
if %uni% ==y goto :otaversion
if %uni% ==n goto :gomenu
echo.-------------------------------------------------------------------------------
:otaversion
cls
color 0b
echo                          _____  ____   __    ___ 
echo                         (  _  )(_  _) /__\  / __)
echo                          )(_)(   )(  /(__)\ \__ \
echo                         (_____) (__)(__)(__)(___/
echo                        *****************************
echo                        * 1.FireOs 5.4.0 and above  *
echo                        * 2.FireOs 5.6.X            *
echo                        * 3.FireOs 5.6.1.0          *
echo                        *****************************
set /p uni= Select your version of FireOs:
if %uni% ==1 goto :fire2
if %uni% ==2 goto :fire1
if %uni% ==3 goto :fire3
:blockotas2
cls
color 0b
echo.-------------------------------------------------------------------------------
echo Disabling OTA's.....
echo.-------------------------------------------------------------------------------
files\adb.exe kill-server
files\adb.exe start-server
files\adb.exe shell pm clear com.amazon.settings.systemupdates
files\adb.exe shell pm clear com.amazon.kindle.otter.oobe.forced.ota
files\adb.exe shell pm clear com.amazon.device.software.ota
echo COMPLETED! Reboot to finish.
pauses
cls 
GOTO:menu
:fire1
cls
color 0b
echo.-------------------------------------------------------------------------------
echo You also want to use NoRootFirewall to block OTAS (more secure)?
echo.-------------------------------------------------------------------------------
set /p uni= Do you want to use NoRootFirewall?y/n:
if %uni% ==y goto :blockotas2yes
if %uni% ==n goto :blockotas2
:blockotas2yes
cls
color 0b
echo.-------------------------------------------------------------------------------
echo Disabling OTA's.....
echo.-------------------------------------------------------------------------------
files\adb.exe kill-server
files\adb.exe start-server
files\adb.exe shell pm clear com.amazon.settings.systemupdates
files\adb.exe shell pm clear com.amazon.kindle.otter.oobe.forced.ota
files\adb.exe shell pm clear com.amazon.device.software.ota
echo.-------------------------------------------------------------------------------
echo Installing NoRootFirewall.....
echo.-------------------------------------------------------------------------------
files\adb.exe install  apps\firewall.apk
echo.-------------------------------------------------------------------------------
echo Please, now in NoRoorFirewall blocks access to the network for applications:
echo DeviceSoftwareOTA
echo System updates
echo Forced Ota
echo When you finish, press a key to continue
echo.-------------------------------------------------------------------------------
timeout 3 > nul
start files\ota.png
files\adb.exe shell am start -n app.greyshirts.firewall/app.greyshirts.firewall.ui.ActivityPager
pause
echo COMPLETED! Reboot to finish.
pause
cls 
GOTO:menu
:fire3
echo.-------------------------------------------------------------------------------
echo Disabling OTA's.....
echo.-------------------------------------------------------------------------------
files\adb.exe kill-server
files\adb.exe start-server
files\adb.exe push apps\com.amazon.unifiedsharefacebook.apk storage/sdcard0
files\adb shell pm install -r -d /sdcard/com.amazon.unifiedsharefacebook.apk
files\adb.exe shell pm clear com.amazon.settings.systemupdates
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.settings.systemupdates
files\adb.exe shell pm clear com.amazon.kindle.otter.oobe.forced.ota
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.kindle.otter.oobe.forced.ota
files\adb.exe shell pm clear com.amazon.device.software.ota
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.device.software.ota
files\adb.exe reboot
echo COMPLETED!
pause
cls
GOTO:menu
:fire2
cls
color 0b
echo.-------------------------------------------------------------------------------
echo You also want to use NoRootFirewall to block OTAS (more secure)?
echo.-------------------------------------------------------------------------------
set /p uni= Do you want to use NoRootFirewall?y/n:
if %uni% ==y goto :blockotas1yes
if %uni% ==n goto :blockotas1
:blockotas1yes
cls
color 0b
echo.-------------------------------------------------------------------------------
echo Disabling OTA's.....
echo.-------------------------------------------------------------------------------
files\adb.exe kill-server
files\adb.exe start-server
files\adb.exe shell pm uninstall -k --user 0 com.amazon.settings.systemupdates
files\adb.exe shell pm uninstall -k --user 0 com.amazon.kindle.otter.oobe.forced.ota
files\adb.exe shell pm uninstall -k --user 0 com.amazon.device.software.ota
echo.-------------------------------------------------------------------------------
echo Installing NoRootFirewall.....
echo.-------------------------------------------------------------------------------
files\adb.exe install apps\firewall.apk
echo.-------------------------------------------------------------------------------
echo Please, now in NoRoorFirewall blocks access to the network for applications:
echo DeviceSoftwareOTA
echo System updates
echo Forced Ota
echo When you finish, press a key to continue
echo.-------------------------------------------------------------------------------
timeout 3 > nul
start files\ota.png
files\adb.exe shell am start -n app.greyshirts.firewall/app.greyshirts.firewall.ui.ActivityPager
pause
echo COMPLETED! Reboot to finish.
pause
cls 
GOTO:menu

:blockotas1
echo.-------------------------------------------------------------------------------
echo Disabling OTA's.....
echo.-------------------------------------------------------------------------------
files\adb.exe kill-server
files\adb.exe start-server
files\adb.exe shell pm uninstall -k --user 0 com.amazon.settings.systemupdates
files\adb.exe shell pm uninstall -k --user 0 com.amazon.kindle.otter.oobe.forced.ota
files\adb.exe shell pm uninstall -k --user 0 com.amazon.device.software.ota
echo COMPLETED! Reboot to finish.
pause
cls 
GOTO:menu
:drivers
cls
color 0b
echo           ____  ____  ____  _  _  ____  ____  ___ 
echo          (  _ \(  _ \(_  _)( \/ )( ___)(  _ \/ __)
echo           )(_) ))   / _)(_  \  /  )__)  )   /\__ \
echo          (____/(_)\_)(____)  \/  (____)(_)\_)(___/
echo.--------------------------------------------------------------------------------
echo This will install the adb drivers on your computer.
echo Please connect the fire to the computer and press any key to continue..
pause
echo.--------------------------------------------------------------------------------
start drivers\dpinstall.exe
echo.--------------------------------------------------------------------------------
echo Installing drivers.... When the installation finishes press any key to continue
pause
echo.--------------------------------------------------------------------------------
echo COMPLETED!
pause
shutdown /r /t 10 /c "The computer will restart to finish the installation of the drivers."
cls
GOTO:menu
:menureboot
cls
color 0b
echo                         ____  ____  ____  _____  _____  ____ 
echo                        (  _ \( ___)(  _ \(  _  )(  _  )(_  _)
echo                         )   / )__)  ) _ ] )(_)(  )(_)(   )(  
echo                        (_)\_)(____)(____/(_____)(_____) (__) 
echo.--------------------------------------------------------------------------------
echo This is the reboot menu. Select a reboot option.
echo Remember to have the fire connected before selecting the option!
echo.--------------------------------------------------------------------------------

echo                    *****************************************
echo                    * 1.Reboot to fastboot mode             *
echo                    * 2.Reboot to recovery mode             *
echo                    * 3.Restart normally                    *                         *
echo                    * 4.Go to menu                          *
echo                    *****************************************
echo.--------------------------------------------------------------------------------
set /p uni= Select an option:
echo.--------------------------------------------------------------------------------
if %uni% ==1 goto :fastboot
if %uni% ==2 goto :recovery
if %uni% ==3 goto :restart
if %uni% ==4 goto :gomenu
:fastboot
files\adb.exe kill-server
files\adb.exe start-server
files\adb.exe reboot bootloader
echo.--------------------------------------------------------------------------------
echo COMPLETED!
echo.--------------------------------------------------------------------------------
pause
cls
GOTO:menu
:recovery
files\adb.exe kill-server
files\adb.exe start-server
files\adb.exe reboot recovery
echo.--------------------------------------------------------------------------------
echo COMPLETED!
echo.--------------------------------------------------------------------------------
pause
cls
GOTO:menu
:restart
files\adb.exe kill-server
files\adb.exe start-server
files\adb.exe reboot
echo.--------------------------------------------------------------------------------
echo COMPLETED!
echo.--------------------------------------------------------------------------------
pause
cls
GOTO:menu
:downgrade
start files\downgrade.bat
exit
:exit
cls 
exit

:gallery
cls
color 0b
echo            ___    __    __    __    ____  ____  _  _ 
echo           / __)  /__\  (  )  (  )  ( ___)(  _ \( \/ )
echo          ( (_-. /(__)\  )(__  )(__  )__)  )   / \  / 
echo           \___/(__)(__)(____)(____)(____)(_)\_) (__) 
echo.--------------------------------------------------------------------------------
echo This will replace amazon photos by android stock gallery.
echo (In FireOs 5.6.X, amazon photos will not be deleted only will be hidden)
set /p uni= Do you want to continue?y/n:
echo.--------------------------------------------------------------------------------
if %uni% ==y goto :galleryok
if %uni% ==n goto :gomenu
:galleryok
cls
echo            ___    __    __    __    ____  ____  _  _ 
echo           / __)  /__\  (  )  (  )  ( ___)(  _ \( \/ )
echo          ( (_-. /(__)\  )(__  )(__  )__)  )   / \  / 
echo           \___/(__)(__)(____)(____)(____)(_)\_) (__) 
echo.-------------------------------------------------------------------------------
echo                        ********************
echo                        * 1.FireOs 5.6.1.0 *
echo                        * 2.FireOs 5.4.0   *
echo                        ********************
set /p uni= Select your version of FireOs:
if %uni% ==1 goto :galleryok1
if %uni% ==2 goto :galleryok2
:galleryok1
cls
files\adb.exe kill-server
files\adb.exe start-server
echo.--------------------------------------------------------------------------------
echo Hiding amazon photos ....
echo.--------------------------------------------------------------------------------
files\adb.exe push apps\com.amazon.unifiedsharefacebook.apk storage/sdcard0
files\adb shell pm install -r -d /sdcard/com.amazon.unifiedsharefacebook.apk
files\adb.exe run-as com.amazon.unifiedshare.facebook pm hide com.amazon.camera
files\adb.exe run-as com.amazon.unifiedshare.facebook pm hide com.amazon.photos
echo.--------------------------------------------------------------------------------
echo Installing stock android gallery ....
echo.--------------------------------------------------------------------------------
files\adb.exe install apps\gallery.apk
files\adb.exe install apps\camera.apk
echo COMPLETED!
pause
cls
GOTO:menu
:galleryok2
cls
files\adb.exe kill-server
files\adb.exe start-server
echo.--------------------------------------------------------------------------------
echo Uninstalling amazon photos....
echo.--------------------------------------------------------------------------------
files\adb.exe shell pm uninstall -k --user 0 com.amazon.photos
files\adb.exe shell pm uninstall -k --user 0 com.amazon.camera
echo.--------------------------------------------------------------------------------
echo Installing stock android gallery ....
echo.--------------------------------------------------------------------------------
files\adb.exe install apps\gallery.apk
echo COMPLETED!
pause
cls
:trashapps
cls 
color 0b
echo                      ____  ____  __    ____  ____  ____ 
echo                     (  _ \( ___)(  )  ( ___)(_  _)( ___)
echo                      )(_) ))__)  )(__  )__)   )(   )__) 
echo                     (____/(____)(____)(____) (__) (____)
echo    __    __  __    __    ____  _____  _   _      __    ____  ____  ___ 
echo   /__\  (  \/  )  /__\  (_   )(  _  )( \ ( )    /__\  (  _ \(  _ \/ __)
echo  /(__)\  )    (  /(__)\  / /_  )(_)(  ) \ (    /(__)\  )___/ )___/\__ \
echo (__)(__)(_/\/\_)(__)(__)(____)(_____)(_) \_)  (__)(__)(__)  (__)  (___/
echo.--------------------------------------------------------------------------------
echo This will uninstall all the Amazon trash apps.
echo Warning: This only works in FireOs 5.4.0.
echo If you are in version 5.6.X, you should do a downgrade.
set /p uni= Do you want to continue?y/n:
echo.--------------------------------------------------------------------------------
if %uni% ==y goto :deleteok
if %uni% ==n goto :gomenu
:deleteok
files\adb.exe kill-server
files\adb.exe start-server
echo.--------------------------------------------------------------------------------
echo Uninstalling Amazon apps
echo.--------------------------------------------------------------------------------
files\adb.exe shell pm uninstall -k --user 0 com.amazon.avod
files\adb.exe shell pm uninstall -k --user 0 com.amazon.venezia
files\adb.exe shell pm uninstall -k --user 0 com.amazon.kindle
files\adb.exe shell pm uninstall -k --user 0 com.amazon.mp3
files\adb.exe shell pm uninstall -k --user 0 com.amazon.kindle.kso
files\adb.exe shell pm uninstall -k --user 0 com.amazon.weather
files\adb.exe shell pm uninstall -k --user 0 com.amazon.photos
files\adb.exe shell pm uninstall -k --user 0 org.mopria.printplugin
files\adb.exe shell pm uninstall -k --user 0 com.amazon.photos.importer
files\adb.exe shell pm uninstall -k --user 0 com.amazon.settings.systemupdates
files\adb.exe shell pm uninstall -k --user 0 com.unifiedsharetwitter
files\adb.exe shell pm uninstall -k --user 0 com.kingsoft.office.amz
files\adb.exe shell pm uninstall -k --user 0 com.goodreads.kindle
files\adb.exe shell pm uninstall -k --user 0 com.audible.application.kindle
files\adb.exe shell pm uninstall -k --user 0 com.amazon.tablet.subscriptions
files\adb.exe shell pm uninstall -k --user 0 com.amazon.tahoe
files\adb.exe shell pm uninstall -k --user 0 com.amazon.webapp
files\adb.exe shell pm uninstall -k --user 0 com.amazon.cloud9
files\adb.exe shell pm uninstall -k --user 0 com.amazon.cloud9.kids
files\adb.exe shell pm uninstall -k --user 0 com.amazon.unifiedsharefacebook
files\adb.exe shell pm uninstall -k --user 0 com.amazon.unifiedsharesinaweibo
files\adb.exe shell pm uninstall -k --user 0 com.amazon.dee.app
files\adb.exe shell pm uninstall -k --user 0 com.amazon.kindle.unifiedSearch
files\adb.exe shell pm uninstall -k --user 0 com.amazon.unifiedsharegoodreads
files\adb.exe shell pm uninstall -k --user 0 com.amazon.zico
files\adb.exe shell pm uninstall -k --user 0 amazon.alexa.tablet
files\adb.exe shell pm uninstall -k --user 0 com.amazon.socialplatform
files\adb.exe shell pm uninstall -k --user 0 com.amazon.geo.client.maps
files\adb.exe shell pm uninstall -k --user 0 com.amazon.ods.kindleconnect
files\adb.exe shell pm uninstall -k --user 0 com.amazon.readynowcore
files\adb.exe shell pm uninstall -k --user 0 com.amazon.geo.mapsv2.services
files\adb.exe shell pm uninstall -k --user 0 jp.co.omronsoft.iwnnimme.mlaz
files\adb.exe kill-server
files\adb.exe start-server
files\adb.exe install apps\gallery.apk
files\adb.exe install apps\camera.apk
files\adb.exe reboot
echo COMPLETED!
pause
cls GOTO:menu
:record
cls
color 0b
echo  ___   ___  ____  ____  ____  _   _  ____  ____  ___  _____  ____  ____  
echo / __) / __)(  _ \( ___)( ___)( \ ( )(  _ \( ___)/ __)(  _  )(  _ \(  _ \ 
echo \__ \( (__  )   / )__)  )__)  ) \ (  )   / )__)( (__  )(_)(  )   / )(_) )
echo (___/ \___)(_)\_)(____)(____)(_) \_)(_)\_)(____)\___)(_____)(_)\_)(____/ 
echo.--------------------------------------------------------------------------------
echo This is an extra feature of the tool that allows you to record the screen of 
echo your Fire without root and without apps(without sound)
set /p uni= Do you want to continue?y/n:
echo.--------------------------------------------------------------------------------
if %uni% ==y goto :rec
if %uni% ==n goto :gomenu
:rec
files\adb.exe kill-server
files\adb.exe start-server
SET /A test=%RANDOM% * 100 / 32768 + 1
echo.--------------------------------------------------------------------------------
echo Recording the screen...
echo Do not disconnect the fire from the computer while recording the screen.
echo To end the recording press ctrl + c.
echo.--------------------------------------------------------------------------------
files\adb.exe shell screenrecord /sdcard/screenrecord%RANDOM%.mp4
cls
GOTO:menu
:extras
cls
color 0b
echo                   ____  _  _  ____  ____    __    ___ 
echo                  ( ___)( \/ )(_  _)(  _ \  /__\  / __)
echo                   )__)  )  (   )(   )   / /(__)\ \__ \
echo                  (____)(_/\_) (__) (_)\_)(__)(__)(___/
echo.--------------------------------------------------------------------------------
echo                     *********************************
echo                     * 1.Record the screen (no root) *
echo                     * 2.Play Android Easter Egg     *
echo                     * 3.Download FireOs updates.bin *
echo                     * 4.Root extras                 *
echo                     * 5.Go to menu                  *
echo                     *********************************
echo.--------------------------------------------------------------------------------
echo These functions are extras of the tool all work without root and in all 
echo versions of FireOs.
echo.--------------------------------------------------------------------------------
set /p uni= SELECT AN OPTION:
if %uni% ==1 goto :record
if %uni% ==2 goto :egg
if %uni% ==3 goto :fireos
if %uni% ==4 goto :rootextras
if %uni% ==5 goto :gomenu

:rootextras
cls
echo        ____  _____  _____  ____    __  __  ____  _  _  __  __ 
echo       (  _ \(  _  )(  _  )(_  _)  (  \/  )( ___)( \( )(  )(  )
echo        )   / )(_)(  )(_)(   )(     )    (  )__)  )  (  )(__)( 
echo       (_)\_)(_____)(_____) (__)   (_/\/\_)(____)(_)\_)(______)
echo.--------------------------------------------------------------------------------
echo                     ***********************************
echo                     * 1.Disable lockscreen            *
echo                     * 2.Enable lockscreen             *
echo                     * 3.Remove amzn apps from /system *
echo                     * 4.Go to menu                    *
echo                     ***********************************
echo.--------------------------------------------------------------------------------
echo These functions are extras of the tool all work without root and in all 
echo versions of FireOs.
echo.--------------------------------------------------------------------------------
set /p uni= SELECT AN OPTION:
if %uni% ==1 goto :lockscreenoff
if %uni% ==2 goto :lockscreenon
if %uni% ==3 goto :amznsystem
if %uni% ==4 goto :gomenu
:lockscreenoff
cls
echo            ____   ____  ___    __    ____  __    ____ 
echo           (  _ \ (_  _)/ __)  /__\  (  _ \(  )  ( ___)
echo            )(_) ) _)(_ \__ \ /(__)\  ) _ ] )(__  )__) 
echo           (____/ (____)(___/(__)(__)(____/(____)(____)
echo    __    _____   ___  _  _  ___   ___  ____  ____  ____  _   _ 
echo   (  )  (  _  ) / __)( )/ )/ __) / __)(  _ \( ___)( ___)( \ ( )
echo    )(__  )(_)( ( (__  )  ( \__ \( (__  )   / )__)  )__)  ) \ ( 
echo   (____)(_____) \___)(_)\_)(___/ \___)(_)\_)(____)(____)(_) \_)
echo.--------------------------------------------------------------------------------
echo This will disable the lockscreen. It needs root.
set /p uni= Do you want to continue?y/n:
echo.--------------------------------------------------------------------------------
if %uni% ==y goto :lockscreenoffyes
if %uni% ==n goto :gomenu
:lockscreenoffyes
echo.--------------------------------------------------------------------------------
files\adb.exe push files\lockscreen.sh /data/local/tmp
files\adb.exe shell chmod 777 /data/local/tmp/lockscreen.sh
files\adb.exe shell su -c "/data/local/tmp/lockscreen.sh"
echo COMPLETED!
pause
cls
GOTO:rootextras

:lockscreenon
cls
echo              ____  _  _    __    ____  __    ____ 
echo             ( ___)( \( )  /__\  (  _ \(  )  ( ___)
echo              )__)  )  (  /(__)\  ) _ ] )(__  )__) 
echo             (____)(_)\_)(__)(__)(____/(____)(____)
echo    __    _____   ___  _  _  ___   ___  ____  ____  ____  _   _ 
echo   (  )  (  _  ) / __)( )/ )/ __) / __)(  _ \( ___)( ___)( \ ( )
echo    )(__  )(_)( ( (__  )  ( \__ \( (__  )   / )__)  )__)  ) \ ( 
echo   (____)(_____) \___)(_)\_)(___/ \___)(_)\_)(____)(____)(_) \_)
echo.--------------------------------------------------------------------------------
echo This will enable the lockscreen. It needs root.
set /p uni= Do you want to continue?y/n:
echo.--------------------------------------------------------------------------------
if %uni% ==y goto :lockscreenonyes
if %uni% ==n goto :gomenu
:lockscreenonyes
echo.--------------------------------------------------------------------------------
files\adb.exe push files\lockscreenon.sh /data/local/tmp
files\adb.exe shell chmod 777 /data/local/tmp/lockscreenon.sh
files\adb.exe shell su -c "/data/local/tmp/lockscreenon.sh"
echo COMPLETED!
pause
cls
GOTO:rootextras

:amznsystem
cls
echo       __    __  __  ____  _  _      __    ____  ____  ___ 
echo      /__\  (  \/  )(_   )( \( )    /__\  (  _ \(  _ \/ __)
echo     /(__)\  )    (  / /_  )  (    /(__)\  )___/ )___/\__ \
echo    (__)(__)(_/\/\_)(____)(_)\_)  (__)(__)(__)  (__)  (___/
echo.--------------------------------------------------------------------------------
echo This will remove amazon apps from /system. It needs root.
set /p uni= Do you want to continue?y/n:
echo.--------------------------------------------------------------------------------
if %uni% ==y goto :amznsytsemyes
if %uni% ==n goto :gomenu

:amznsytsemyes
echo [*]Remounting system read write...
files\adb.exe shell su -c "mount -o rw,remount /system"
echo [*]Removing apps from /system...
files\adb.exe shell su -c "rm -rf /system/app/jp.co.omronsoft.iwnnime.mlaz"
files\adb.exe shell su -c "rm -rf /system/app/PinyinIME"
files\adb.exe shell su -c "rm -rf /system/app/MopriaPlugin"
files\adb.exe shell su -c "rm -rf /system/app/Music"
files\adb.exe shell su -c "rm -rf /system/priv-app/Camera"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.ags.app"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.avod"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.calculator"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.cloud9"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.cloud9.contentservice"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.cloud9.kids-stub"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.cloud9.systembrowserprovider"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.csapp"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.dee.app"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.firelauncher"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.kcp.tutorial"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.kindle"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.kindle.kso"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.kindle.otter.oobe.forced.ota"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.kindle.otter.oobe"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.kindle.personal_video"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.kindle.unifiedSearch"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.kor.demo"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.legalsettings"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.mp3"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.ods.kindleconnect"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.photos"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.photos.importer"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.socialplatform"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.tahoe"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.unifiedsharefacebook"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.unifiedsharegoodreads"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.unifiedsharesinaweibo"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.unifiedsharetwitter"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.vans.alexatabletshopping.app"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.venezia"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.weather"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.webapp"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.windowshop"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.amazon.zico"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.android.calendar"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.android.contacts"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.android.deskclock"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.android.email"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.audible.application.kindle"
files\adb.exe shell su -c "rm -rf /system/priv-app/com.goodreads.kindle"
files\adb.exe shell su -c "rm -rf /system/priv-app/DeviceSoftwareOTA"
files\adb.exe shell su -c "rm -rf /system/priv-app/DeviceSoftwareOTAContracts"
files\adb.exe shell su -c "rm -rf /system/priv-app/moffice_7.1_default_en00105_multidex_217792"
echo Rebooting...
files\adb.exe reboot
echo COMPLETED!
pause
cls
GOTO:rootextras

:backuprestore
cls
color 0b
echo              ____    __    ___  _  _  __  __  ____ 
echo             (  _ \  /__\  / __)( )/ )(  )(  )(  _ \
echo              ) _ ] /(__)\( (__  )  (  )(__)(  )___/
echo             (____/(__)(__)\___)(_)\_)(______)(__)  
echo    __    _  _  ____     ____  ____  ___  ____  _____  ____  ____ 
echo   /__\  ( \( )(  _ \   (  _ \( ___)/ __)(_  _)(  _  )(  _ \( ___)
echo  /(__)\  )  (  )(_) )   )   / )__) \__ \  )(   )(_)(  )   / )__) 
echo (__)(__)(_)\_)(____/   (_)\_)(____)(___/ (__) (_____)(_)\_)(____)
echo.--------------------------------------------------------------------------------
echo What do you want to do? Backup or Restore
echo.--------------------------------------------------------------------------------
echo                       **************
echo                       * 1.Backup   *
echo                       * 2.Restore  *
echo                       **************
echo.--------------------------------------------------------------------------------
set /p uni= Select an option:
echo.--------------------------------------------------------------------------------
if %uni% ==1 goto :backup
if %uni% ==2 goto :restore
if %uni% ==3 goto :gomenu
:backup
cls
color 0b
echo              ____    __    ___  _  _  __  __  ____ 
echo             (  _ \  /__\  / __)( )/ )(  )(  )(  _ \
echo              ) _ ] /(__)\( (__  )  (  )(__)(  )___/
echo             (____/(__)(__)\___)(_)\_)(______)(__)  
echo.--------------------------------------------------------------------------------
echo This will make a backup of all your applications and your data.
echo In case you can not restore the backup, try to put a password when you
echo ask if you want to encrypt the backup
echo.--------------------------------------------------------------------------------
set /p uni= Do you want to continue?y/n:
echo.--------------------------------------------------------------------------------
if %uni% ==y goto :bak
if %uni% ==n goto :gomenu

:bak
echo              ____    __    ___  _  _  __  __  ____ 
echo             (  _ \  /__\  / __)( )/ )(  )(  )(  _ \
echo              ) _ ] /(__)\( (__  )  (  )(__)(  )___/
echo             (____/(__)(__)\___)(_)\_)(______)(__)  
echo.--------------------------------------------------------------------------------
echo Doing backup... When the backup finish, press any key to continue
echo.--------------------------------------------------------------------------------
files\adb.exe kill-server
files\adb.exe start-server
files\adb.exe backup -apk -all -f backup.ab
echo COMPLETED!
pause
cls
GOTO:backuprestore

:restore
cls
color 0b
echo      ____  ____  ___  ____  _____  ____  ____ 
echo     (  _ \( ___)/ __)(_  _)(  _  )(  _ \( ___)
echo      )   / )__) \__ \  )(   )(_)(  )   / )__) 
echo     (_)\_)(____)(___/ (__) (_____)(_)\_)(____)
echo.--------------------------------------------------------------------------------
echo Restoring backup...
echo.--------------------------------------------------------------------------------
files\adb.exe kill-server
files\adb.exe start-server
files\adb.exe adb restore backup.ab
del backup.ab
echo COMPLETED!
pause
cls
GOTO:backuprestore
:visit
start https://forum.xda-developers.com/amazon-fire/general/tool-amazon-fire-7-7gen-fire-os-5-6-x-t3815112/page1
cls
GOTO:menu
:disable
cls
color 0b
echo                ____  ____  ___    __    ____  __    ____              
echo               (  _ \(_  _)/ __)  /__\  (  _ \(  )  ( ___)             
echo                )(_) )_)(_ \__ \ /(__)\  ) _ ] )(__  )__)              
echo               (____/(____)(___/(__)(__)(____/(____)(____)             
echo    __    __  __    __    ____  _____  _   _      __    ____  ____  ___ 
echo   /__\  (  \/  )  /__\  (_   )(  _  )( \ ( )    /__\  (  _ \(  _ \/ __)
echo  /(__)\  )    (  /(__)\  / /_  )(_)(  ) \ (    /(__)\  )___/ )___/\__ \
echo (__)(__)(_/\/\_)(__)(__)(____)(_____)(_) \_)  (__)(__)(__)  (__)  (___/
echo.-------------------------------------------------------------------------------
echo This will disable all amazon applications. It only works with FireOs 5.6.1.0 
echo I want to thank Supersonic27543 for discovering this method.
set /p uni= Do you want to continue?y/n:
echo.-------------------------------------------------------------------------------
if %uni% ==y goto :disableyes
if %uni% ==n goto :gomenu
:disableyes
cls
files\adb.exe kill-server
files\adb.exe start-server
echo.-------------------------------------------------------------------------------
echo Wait...
echo.-------------------------------------------------------------------------------
files\adb.exe push apps\com.amazon.unifiedsharefacebook.apk storage/sdcard0
files\adb shell pm install -r -d /sdcard/com.amazon.unifiedsharefacebook.apk
echo.-------------------------------------------------------------------------------
echo If INSTALL_FAILED_MISSING_SHARED_LIBRARY is displayed
echo It means that your device is not compatible. Please wait for the next version 
echo of the tool to see if the error can be solved. If no error is displayed, 
echo press a key to continue
pause
echo.-------------------------------------------------------------------------------
echo.-------------------------------------------------------------------------------
echo Disabling amazon apps...
echo.-------------------------------------------------------------------------------
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.venezia
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.avod
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.kindle
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.mp3
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.kindle.kso
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.weather
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.photos
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide org.mopria.printplugin
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.photos.importer
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.settings.systemupdates
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.unifiedsharetwitter
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.kingsoft.office.amz
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.goodreads.kindle
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.audible.application.kindle
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.tablet.subscriptions
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.tahoe
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.ags.app
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.webapp
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.cloud9
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.cloud9.kids
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.unifiedsharesinaweibo
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.dee.app
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.kindle.unifiedSearch
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.unifiedsharegoodreads
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.zico
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide amazon.alexa.tablet
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.socialplatform
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.geo.client.maps
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.ods.kindleconnect
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.readynowcore
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazon.geo.mapsv2.services
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide jp.co.omronsoft.iwnnimme.mlaz
files\adb.exe shell run-as com.amazon.unifiedsharefacebook pm hide com.amazonkcp.tutorial
echo COMPLETED!
pause
cls
GOTO:menu
:egg
cls
color 0b
echo           ____    __    ___  ____  ____  ____    ____  ___   ___ 
echo          ( ___)  /__\  / __)(_  _)( ___)(  _ \  ( ___)/ __) / __)
echo           )__)  /(__)\ \__ \  )(   )__)  )   /   )__)( (_-.( (_-.
echo          (____)(__)(__)(___/ (__) (____)(_)\_)  (____)\___/ \___/
echo.-------------------------------------------------------------------------------
echo This is an extra script that allows you to play the hidden easter egg of 
echo android called Lollipop Land. I make this script because amazon hides 
echo this easter egg.
echo.-------------------------------------------------------------------------------
pause
files\adb.exe shell am start -n com.android.systemui/com.android.systemui.egg.LLandActivity
echo ENJOY!
pause
cls
:message
cls
color 0b
echo                 ____  ____  ___    __    ____  __    ____ 
echo                (  _ \(_  _)/ __)  /__\  (  _ \(  )  ( ___)
echo                 )(_) )_)(_ \__ \ /(__)\  ) _ ] )(__  )__) 
echo                (____/(____)(___/(__)(__)(____/(____)(____)
echo                 __  __  ____  ___  ___    __    ___  ____ 
echo                (  \/  )( ___)/ __)/ __)  /__\  / __)( ___)
echo                 )    (  )__) \__ \\__ \ /(__)\( (_-. )__) 
echo                (_/\/\_)(____)(___/(___/(__)(__)\___/(____)
echo.-------------------------------------------------------------------------------
echo This will disable the message: The requested action is not permitted. 
echo Check Parental Controls settings and retry. That appears when you try to open 
echo a disabled application. Before continuing I want to thank @t0x1cSH for
echo creating the app to hide the message.
echo.-------------------------------------------------------------------------------
set /p uni= Do you want to continue?y/n:
echo.-------------------------------------------------------------------------------
if %uni% ==y goto :men
if %uni% ==n goto :gomenu
:men
echo [*] Installing app...
echo.-------------------------------------------------------------------------------
files\adb.exe kill-server
files\adb.exe start-server
files\adb.exe install apps\parentalcontrol.apk
echo.--------------------------------------------------------------------------------
echo Now activate ParentalControlHide on accessibility. Then press any key 
echo to continue.
echo.--------------------------------------------------------------------------------
files\adb.exe shell am start -n com.android.settings/.Settings\$AccessibilitySettingsActivity
pause
echo.--------------------------------------------------------------------------------
echo COMPLETED!
GOTO:menu

:info
cls
color 0b
echo      ____  _____  _____  ____  __    _____    __    ____  ____  ____ 
echo     (  _ \(  _  )(  _  )(_  _)(  )  (  _  )  /__\  (  _ \( ___)(  _ \
echo      ) _ ] )(_)(  )(_)(   )(   )(__  )(_)(  /(__)\  )(_) ))__)  )   /
echo     (____/(_____)(_____) (__) (____)(_____)(__)(__)(____/(____)(_)\_)
echo                       ____  _   _  ____  _____                         
echo                      (_  _)( \ ( )( ___)(  _  )                        
echo                       _)(_  ) \ (  )__)  )(_)(                         
echo                      (____)(_) \_)(__)  (_____)                        
echo.--------------------------------------------------------------------------------
echo This script will create a text file with various information from your fire 
echo bootloader. Please make sure that the fastboot drivers are properly installed.
set /p uni= Do you want to continue?y/n:
echo.-------------------------------------------------------------------------------
if %uni% ==y goto :infoyes
if %uni% ==n goto :gomenu
echo.--------------------------------------------------------------------------------
:infoyes
cls
echo      ____  _____  _____  ____  __    _____    __    ____  ____  ____ 
echo     (  _ \(  _  )(  _  )(_  _)(  )  (  _  )  /__\  (  _ \( ___)(  _ \
echo      ) _ ] )(_)(  )(_)(   )(   )(__  )(_)(  /(__)\  )(_) ))__)  )   /
echo     (____/(_____)(_____) (__) (____)(_____)(__)(__)(____/(____)(_)\_)
echo                       ____  _   _  ____  _____                         
echo                      (_  _)( \ ( )( ___)(  _  )                        
echo                       _)(_  ) \ (  )__)  )(_)(                         
echo                      (____)(_) \_)(__)  (_____)                        
echo.--------------------------------------------------------------------------------
echo [*] Rebooting fire in fastboot mode...
echo.--------------------------------------------------------------------------------
files\adb.exe reboot bootloader
files\adb.exe kill-server
files\adb.exe start-server
files\fastboot.exe getvar all 2> bootloader.txt
files\fastboot.exe reboot
echo.--------------------------------------------------------------------------------
echo COMPLETED! Your bootloader information is in the tool folder and its called: 
echo [*] bootloader.txt.
start bootloader.txt
echo.--------------------------------------------------------------------------------
pause
cls 
GOTO:menu

:fireos
cls
echo                ____  _____  _    _  _  _  __    _____    __    ____      
echo               (  _ \(  _  )( \/\/ )( \( )(  )  (  _  )  /__\  (  _ \     
echo                )(_) ))(_)(  )    (  )  (  )(__  )(_)(  /(__)\  )(_) )    
echo               (____/(_____)(__/\__)(_)\_)(____)(_____)(__)(__)(____/     
echo                ____  ____  ____  __  __  _    _    __    ____  ____  ___ 
echo               ( ___)(_  _)(  _ \(  \/  )( \/\/ )  /__\  (  _ \( ___)/ __)
echo                )__)  _)(_  )   / )    (  )    (  /(__)\  )   / )__) \__ \
echo               (__)  (____)(_)\_)(_/\/\_)(__/\__)(__)(__)(_)\_)(____)(___/
echo.--------------------------------------------------------------------------------
echo [*] FIRE OS DOWNLOADER [*]
echo This is a script to download versions of fire os (For fire 7 '7gen) to install 
echo them manually.
echo.--------------------------------------------------------------------------------
echo                  **********************
echo                  * 1.FireOs 5.4.0     *
echo                  * 2.FireOs 5.6.0.1   *
echo                  * 3.FireOs 5.6.1     *
echo                  * 4.FireOs 5.6.3.0   *
echo                  * 5.FireOs 5.3.3.0   *
echo                  **********************
echo.--------------------------------------------------------------------------------
set /p uni= Select the version of FireOs you want to download:
echo.--------------------------------------------------------------------------------
if %uni% ==1 goto :fire40
if %uni% ==2 goto :fire601
if %uni% ==3 goto :fire61
if %uni% ==4 goto :fire63
if %uni% ==5 goto :fire330
:fire40
echo.--------------------------------------------------------------------------------
echo [*] The firmware will be downloaded into the firmware folder [*]
echo DOWNLOADING.........
echo.--------------------------------------------------------------------------------
files\curl.exe curl -L https://fireos-tablet-src.s3.amazonaws.com/T0d9JQEVMMnbK0kIAcFJMOfUqo/update-kindle-55.5.7.9_user_579225620.bin > update-kindle-55.5.7.9_user_579225620.bin
echo COMPLETED!!
MOVE update-kindle-55.5.7.9_user_579225620.bin firmwares
cls
GOTO:menu

:fire601
cls
echo.--------------------------------------------------------------------------------
echo [*] The firmware will be downloaded into the firmware folder [*]
echo DOWNLOADING.........
echo.--------------------------------------------------------------------------------
files\curl.exe curl -L https://kindle-fire-updates.s3.amazonaws.com/IdUCRzjMEnC55dj1ZRTJyZwaC8/update-kindle-55.5.9.5_user_595550320.bin > update-kindle-55.5.9.5_user_595550320.bin
echo COMPLETED!!
MOVE update-kindle-55.5.9.5_user_595550320.bin firmwares
cls
GOTO:menu

:fire61
cls
echo.--------------------------------------------------------------------------------
echo [*] The firmware will be downloaded into the firmware folder [*]
echo DOWNLOADING.........
echo.--------------------------------------------------------------------------------
files\curl.exe curl -L https://kindle-fire-updates.s3.amazonaws.com/0EUD1Luh9x5wNH2DCdmU2yswyB/update-kindle-55.6.0.5_user_605485120.bin > update-kindle-55.6.0.5_user_605485120.bin
echo COMPLETED!!
MOVE update-kindle-55.6.0.5_user_605485120.bin firmwares
cls

:fire63
cls
echo.--------------------------------------------------------------------------------
echo [*] The firmware will be downloaded into the firmware folder [*]
echo DOWNLOADING.........
echo.--------------------------------------------------------------------------------
files\curl.exe curl -L https://fireos-tablet-src.s3.amazonaws.com/hNIxGfX1bgGF5Lfyxfa0Ov8qKh/update-kindle-37.5.7.0_user_570208720.bin > update-kindle-37.5.7.0_user_570208720.bin
echo COMPLETED!!
MOVE update-kindle-37.5.7.0_user_570208720.bin firmwares
cls

:fire330
cls
echo.--------------------------------------------------------------------------------
echo [*] The firmware will be downloaded into the firmware folder [*]
echo DOWNLOADING.........
echo.--------------------------------------------------------------------------------
files\curl.exe curl -L https://fireos-tablet-src.s3.amazonaws.com/93olgKwMW8ecGINzUwwqQmLz43/update-kindle-55.6.2.6_user_626533320.bin > update-kindle-55.6.2.6_user_626533320.bin
echo COMPLETED!!
MOVE update-kindle-55.6.2.6_user_626533320.bin firmwares
cls
