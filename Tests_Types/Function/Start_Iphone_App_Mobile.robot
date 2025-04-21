*** Settings ***

Documentation    This is a testsuite to start the Iphone and install and start my test app
... 

Library  AppiumLibrary
Library  String
Resource  ../../Pages_Objects_Model/Home_Page.resource
Resource  ../../Pages_Objects_Model/Picture_App.resource
Resource  ../../Keyword/Keywords_Home_Page.resource
Resource  ../../Keyword/Keywords_Picture_App.resource

*** Test Cases ***
Validate My Iphone Starts
   Given I Press Start Button on my Iphone
   When I Start The Iphone   ${URL}    platform_name=${PLATFORM_NAME}    automation_name=${AUTOMATION_NAME}    platform_version=${PLATFORM_VERSION}    device_name=${DEVICE_NAME}    new_command_timeout=0    connect_hardware_keyboard=${True}    udid=${UDID}  
   Then I Should See My Home App Icons If I Go To Start Page
   AND The Safari App On My Home App Icons Should Be Enabled

Validate Installation And Close My App
   Given I Will Start The Installation Of The App
   When I Start Installation of My App It Should Be Installed  ${URL}    platform_name=${PLATFORM_NAME}    automation_name=${AUTOMATION_NAME}    platform_version=${PLATFORM_VERSION}    device_name=${DEVICE_NAME}    new_command_timeout=0    connect_hardware_keyboard=${True}    udid=${UDID}  app_path=${APP_PATH}
   Then I Should Be Able To Terminate The App After Installation
   AND I Would See It Afterwards On My Device Screen


  
 

  

