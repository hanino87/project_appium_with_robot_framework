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
  GIVEN I Press Start Button On My iPhone
  WHEN I Start The iPhone   ${URL}    platform_name=${PLATFORM_NAME}    automation_name=${AUTOMATION_NAME}    platform_version=${PLATFORM_VERSION}    device_name=${DEVICE_NAME}    new_command_timeout=0    connect_hardware_keyboard=${True}    udid=${UDID}  
  THEN I Should See My Home App Icons If I Go To Start Page
  AND The Safari App On My Home App Icons Should Be Enabled

Validate Installation And Close My App
  GIVEN I Will Start The Installation Of The App
  WHEN I Start Installation of My App It Should Be Installed  ${URL}    platform_name=${PLATFORM_NAME}    automation_name=${AUTOMATION_NAME}    platform_version=${PLATFORM_VERSION}    device_name=${DEVICE_NAME}    new_command_timeout=0    connect_hardware_keyboard=${True}    udid=${UDID}  app_path=${APP_PATH}
  THEN I Should Be Able To Terminate The App After Installation
  AND I Would See It Afterwards On My Device Screen

Validate Login With Correct Password And Username
  Set Env Vars For Username 1 In Swaglabs
  Set Env Vars For Password In Swaglabs
  GIVEN I Am On SwagLabs Login Page
  WHEN Im Try To Login On The App With Correct Username "${SWAG_LABS_USERNAME_1}" And Password "${SWAG_LABS_PASSWORD}"
  THEN I Should See List Of Available Products
  AND I Can Terminate The App And Don't See Products 
    
Validate Can`t Login With Invalid Password And Get Right Error Message 
  Set Env Vars For Username 1 In Swaglabs
  GIVEN I Am On SwagLabs Login Page
  WHEN Im Try To Login On The App With Right Username "${SWAG_LABS_USERNAME_1}" And Wrong Password "${BAD_PASSWORD}"
  THEN I Should See Error Messages That Password Does Not Match My Username
  AND I Will not See Lists Of Products 

###  I WILL CHANGE WILL TO SHOULD TO GET MORE SIMILAR TEST STEPS IN MY TEST 

Validate Can`t Login With Invalid Username And Get Right Error Message 
  Set Env Vars For Password In Swaglabs
  GIVEN I Am On SwagLabs Login Page
  WHEN Im Try To Login On The App With Wrong Username "${BAD_USERNAME}" And Right Password "${SWAG_LABS_PASSWORD}"
  THEN I Should See Error Messages That Password Does Not Match My Username
  AND I Will not See Lists Of Products 


###  I WILL CHANGE WILL TO SHOULD TO GET MORE SIMILAR TEST STEPS IN MY TEST 

Validate Can`t Login With Lockedout Customer And Get Right Error Message 
  Set Env Vars For Username 2 In Swaglabs
  Set Env Vars For Password In Swaglabs
  GIVEN I Am On SwagLabs Login Page
  WHEN Im Try To Login On The App With Locked Out User "${SWAG_LABS_USERNAME_2}" And Password "${SWAG_LABS_PASSWORD}"
  THEN I Should See Error Messages That Im Locked Out From System
  AND I Will not See Lists Of Products
 

###  I WILL CHANGE WILL TO SHOULD TO GET MORE SIMILAR TEST STEPS IN MY TEST 

Validate Can`t Login With Problem User 
  Set Env Vars For Password In Swaglabs
  Set Env Vars For Username 3 In Swaglabs
  GIVEN I Am On SwagLabs Login Page
  WHEN Im Try To Login On The App With Problem User "${SWAG_LABS_USERNAME_3}" And Password "${SWAG_LABS_PASSWORD}"
  THEN I Will not See Lists Of Products But I Continue With My Test 
  AND I Can Terminate The App And Don't See Products 

Validate Can`t Login With No Username And Get Right Error Message 
  Set Env Vars For Password In Swaglabs
  GIVEN I Am On SwagLabs Login Page
  WHEN Im Try To Login On The App With Right Password "${SWAG_LABS_PASSWORD}" And No Username
  THEN I Should See Error Message That I Miss A Username
  AND I Can Terminate The App And Don't See Products 

Validate Can`t Login With No Password And Get Right Error Message 
  Set Env Vars For Username 1 In Swaglabs
  GIVEN I Am On SwagLabs Login Page
  WHEN Im Try To Login On The App With Right Username "${SWAG_LABS_USERNAME_1}" And No Password
  THEN I Should See Error Message That I Miss A Password
  AND I Can Terminate The App And Don't See Products 

Validate That Password Word Is Not Visible On Login Page 
  Set Env Vars For Password In Swaglabs
  GIVEN I Am On SwagLabs Login Page
  WHEN I Try To Scrool on Login page
  THEN I Should Not See Any Password Details 
  AND I Terminate Swaglabs App

Validate That Password Is Masked When Password Is Written 
  Set Env Vars For Username 1 In Swaglabs
  GIVEN I Am On SwagLabs Login Page
  WHEN Im Try To Login On The App With Username "${SWAG_LABS_USERNAME_1}"
  THEN I Can Verify That The Password Is Masked When I Write It 
  AND I Terminate Swaglabs App

  


 

