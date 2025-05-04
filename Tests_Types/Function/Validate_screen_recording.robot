*** Settings ***
Documentation     Saves screen recording for test that did`nt work for Iphone simulator 
...               iPhone: requires ffmpeg installed on Mac where phones are conneted. Run: brew install ffmpeg
...               Android: recording is not working in all phones (does not cause test failures if recording is not supported)
...               ffplay appium-screenrecord-10.ffmpeg is command to view video from command line 

Library           BuiltIn
Library           OperatingSystem
Library           AppiumLibrary

Resource  ../../Pages_Objects_Model/Home_Page.resource
Resource  ../../Keyword/Keywords_Home_Page.resource

*** Test Cases ***

  
Validate I Can Start And Stop Screen Recording 
  GIVEN I Start The Iphone   ${URL}    platform_name=${PLATFORM_NAME}    automation_name=${AUTOMATION_NAME}    platform_version=${PLATFORM_VERSION}    device_name=${DEVICE_NAME}    new_command_timeout=0    connect_hardware_keyboard=${True}    udid=${UDID}  
  WHEN I Am On A Page On My Iphone 
  THEN Start Video Of My Test On The Screen 
  AND Stop Recording Of My Test On The Screen 
  
### I WILL ADD MORE STEPS TO VALIDATE SCREEN RECORDING 