*** Settings ***
Documentation     This is a test suite for the login page in SwagLabs app
...               on my iPhone 16 device 

Library    AppiumLibrary
Library    String
Library    ../../LoadEnv.py
Resource   ../../Pages_Objects_Model/Swag_Labs_app_homepage.resource
Resource   ../../Pages_Objects_Model/Swag_Labs_app_productpage.resource
Resource   ../../Keyword/Keywords_Swag_Labs_homepage.resource
Resource   ../../Keyword/keywords_Homepage.resource


*** Variables ***

*** Test Cases ***

I Verify That My iPhone Is Running 
    Open Application    ${url}    platformName=${platform_name}    automationName=${automation_name}    platformVersion=${platform_version}    deviceName=${device_name}    newCommandTimeout=${new_command_timeout}    connectHardwareKeyboard=${connect_hardware_keyboard}    udid=${udid}   

Login With Invalid Password
    Set Env Vars For Username 1 In Swaglabs
    WHEN I Am On SwagLabs Homepage
    GIVEN Im Try To Login On The App With username "${SWAG_LABS_USERNAME_1}" and password "${BAD_PASSWORD}"
    Then I Should See Error Messages That Password Does Not Match My Username
    And I Will not See Lists Of Products
