*** Settings ***
Documentation     This is a test suite for the login page in SwagLabs app
...               on my iPhone 16 device 

Library    AppiumLibrary
Library    String
Library    ../../LoadEnv.py
Resource   ../../Pages_Objects_Model/Swag_Labs_app_homepage.resource
Resource   ../../Pages_Objects_Model/Swag_Labs_Productpage.resource
Resource   ../../Keyword/Keywords_Swag_Labs_homepage.resource
Resource   ../../Keyword/keywords_Homepage.resource
Resource   ../../Keyword/Keywords_Swag_Labs_Productpage.resource

*** Variables ***

*** Test Cases ***

I Verify That My iPhone Is Running 
    Open Application    ${url}    platformName=${platform_name}    automationName=${automation_name}    platformVersion=${platform_version}    deviceName=${device_name}    newCommandTimeout=${new_command_timeout}    connectHardwareKeyboard=${connect_hardware_keyboard}    udid=${udid}   

Login With Invalid Password
    Set Env Vars For Username 1 In Swaglabs
    WHEN I Am On SwagLabs Homepage
    GIVEN Im Try To Login On The App With First Username "${SWAG_LABS_USERNAME_1}" And password "${BAD_PASSWORD}"
    Then I Should See Error Messages That Password Does Not Match My Username
    And I Will not See Lists Of Products

Login With Lockedout Customer 
  Set Env Vars For Username 2 In Swaglabs
  Set Env Vars For Password In Swaglabs
    WHEN I Am On SwagLabs Homepage
    Given Im Try To Login On The App With Second Username "${SWAG_LABS_USERNAME_2}" And password "${SWAG_LABS_PASSWORD}"
    Then I Should See Error Messages That Im Locked Out From System
    AND I Will not See Lists Of Products

Login With Normal User 
  Set Env Vars For Password In Swaglabs
  Set Env Vars For Username 1 In Swaglabs
  When I Am On SwagLabs Homepage
  GIVEN Im Try To Login On The App With Third Username "${SWAG_LABS_USERNAME_1}" And password "${SWAG_LABS_PASSWORD}"
  Then I Should See List Of Available Products
  And I Can Terminate The App And Dont See Products 




 

