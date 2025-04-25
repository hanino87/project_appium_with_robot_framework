*** Settings ***
Documentation     This is a test suite for the login page in SwagLabs app
...               on my iPhone 16 device 

Library    AppiumLibrary
Library    String
Library    ../../LoadEnv.py

Resource   ../../Pages_Objects_Model/Swaglabs_App_Home_Page.resource
Resource   ../../Pages_Objects_Model/Swaglabs_Product_Page.resource
Resource   ../../Keyword/Keywords_Swaglabs_Home_Page.resource
Resource   ../../Keyword/Keywords_Home_Page.resource
Resource   ../../Keyword/Keywords_Swaglabs_Product_Page.resource

*** Test Cases ***
 Validate My iPhone Starts
  Given I Press Start Button On My iPhone
  When I Start The iPhone   ${URL}    platform_name=${PLATFORM_NAME}    automation_name=${AUTOMATION_NAME}    platform_version=${PLATFORM_VERSION}    device_name=${DEVICE_NAME}    new_command_timeout=0    connect_hardware_keyboard=${True}    udid=${UDID}  
  Then I Should See My Home App Icons If I Go To Start Page
  AND The Safari App On My Home App Icons Should Be Enabled

Validate Installation And Close My App
  Given I Will Start The Installation Of The App
  When I Start Installation of My App It Should Be Installed  ${URL}    platform_name=${PLATFORM_NAME}    automation_name=${AUTOMATION_NAME}    platform_version=${PLATFORM_VERSION}    device_name=${DEVICE_NAME}    new_command_timeout=0    connect_hardware_keyboard=${True}    udid=${UDID}  app_path=${APP_PATH}
  Then I Should Be Able To Terminate The App After Installation
  AND I Would See It Afterwards On My Device Screen

Validate Login With Correct Password And Username
  Set Env Vars For Username 1 In Swaglabs
  Set Env Vars For Password In Swaglabs
  WHEN I Am On SwagLabs Login Page
  GIVEN Im Try To Login On The App With Correct Username "${SWAG_LABS_USERNAME_1}" And Password "${SWAG_LABS_PASSWORD}"
  Then I Should See List Of Available Products
  And I Can Terminate The App And Don't See Products 
    
Validate Can`t Login With Invalid Password And Get Right Error Message 
  Set Env Vars For Username 1 In Swaglabs
  WHEN I Am On SwagLabs Login Page
  GIVEN Im Try To Login On The App With Right Username "${SWAG_LABS_USERNAME_1}" And Wrong Password "${BAD_PASSWORD}"
  Then I Should See Error Messages That Password Does Not Match My Username
  And I Will not See Lists Of Products 

Validate Can`t Login With Invalid Username And Get Right Error Message 
  Set Env Vars For Password In Swaglabs
  WHEN I Am On SwagLabs Login Page
  GIVEN Im Try To Login On The App With Wrong Username "${BAD_USERNAME}" And Right Password "${SWAG_LABS_PASSWORD}"
  Then I Should See Error Messages That Password Does Not Match My Username
  And I Will not See Lists Of Products 
  

Validate Can`t Login With Lockedout Customer And Get Right Error Message 
  Set Env Vars For Username 2 In Swaglabs
  Set Env Vars For Password In Swaglabs
  WHEN I Am On SwagLabs Login Page
  Given Im Try To Login On The App With Locked Out User "${SWAG_LABS_USERNAME_2}" And Password "${SWAG_LABS_PASSWORD}"
  Then I Should See Error Messages That Im Locked Out From System
  AND I Will not See Lists Of Products
 

Validate Can`t Login With Problem User 
  Set Env Vars For Password In Swaglabs
  Set Env Vars For Username 3 In Swaglabs
  When I Am On SwagLabs Login Page
  GIVEN Im Try To Login On The App With Problem User "${SWAG_LABS_USERNAME_3}" And Password "${SWAG_LABS_PASSWORD}"
  Then I Will not See Lists Of Products But I Continue With My Test 
  And I Can Terminate The App And Don't See Products 

Validate Can`t Login With No Username And Get Right Error Message 
  Set Env Vars For Password In Swaglabs
  When I Am On SwagLabs Login Page
  Given Im Try To Login On The App With Right Password "${SWAG_LABS_PASSWORD}" And No Username
  Then I Should See Error Message That I Miss A Username
  And I Can Terminate The App And Don't See Products 

Validate Can`t Login With No Password And Get Right Error Message 
  Set Env Vars For Username 1 In Swaglabs
  When I Am On SwagLabs Login Page
  GIVEN Im Try To Login On The App With Right Username "${SWAG_LABS_USERNAME_1}" And No Password
  Then I Should See Error Message That I Miss A Password
  And I Can Terminate The App And Don't See Products 

Validate That Password Word Is Not Visible On Login Page 
  Set Env Vars For Password In Swaglabs
  When I Am On SwagLabs Login Page
  Given I Try To Scrool on Login page
  Then I Should Not See Any Password Details 
  AND I Terminate Swaglabs App

Validate That Password Is Masked When Password Is Written 
  Set Env Vars For Username 1 In Swaglabs
  When I Am On SwagLabs Login Page
  Given Im Try To Login On The App With Username "${SWAG_LABS_USERNAME_1}"
  Then I Can Verify That The Password Is Masked When I Write It 
  And I Terminate Swaglabs App

  


 

