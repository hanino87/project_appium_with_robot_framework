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

I Verify That My iPhone Is Running 
    Open Application    ${url}    platformName=${platform_name}    automationName=${automation_name}    platformVersion=${platform_version}    deviceName=${device_name}    newCommandTimeout=${new_command_timeout}    connectHardwareKeyboard=${connect_hardware_keyboard}    udid=${udid}   

Login With Invalid Password
    Set Env Vars For Username 1 In Swaglabs
    WHEN I Am On SwagLabs Loginpage
    GIVEN Im Try To Login On The App With First Username "${SWAG_LABS_USERNAME_1}" And password "${BAD_PASSWORD}"
    Then I Should See Error Messages That Password Does Not Match My Username
    And I Will not See Lists Of Products 
    
Login With Invalid Username
    Set Env Vars For Password In Swaglabs
    WHEN I Am On SwagLabs Loginpage
    GIVEN Im Try To Login On The App With Fourth Username "${BAD_USERNAME}" And password "${SWAG_LABS_PASSWORD}"
    Then I Should See Error Messages That Password Does Not Match My Username
    And I Will not See Lists Of Products 

Login With Lockedout Customer 
  Set Env Vars For Username 2 In Swaglabs
  Set Env Vars For Password In Swaglabs
    WHEN I Am On SwagLabs Loginpage
    Given Im Try To Login On The App With Second Username "${SWAG_LABS_USERNAME_2}" And password "${SWAG_LABS_PASSWORD}"
    Then I Should See Error Messages That Im Locked Out From System
    AND I Will not See Lists Of Products

Login With Normal User 
  Set Env Vars For Password In Swaglabs
  Set Env Vars For Username 1 In Swaglabs
  When I Am On SwagLabs Loginpage
  GIVEN Im Try To Login On The App With Third Username "${SWAG_LABS_USERNAME_1}" And password "${SWAG_LABS_PASSWORD}"
  Then I Should See List Of Available Products
  And I Can Terminate The App And Dont See Products 

Login With Problem User 
  Set Env Vars For Password In Swaglabs
  Set Env Vars For Username 3 In Swaglabs
  When I Am On SwagLabs Loginpage
  GIVEN Im Try To Login On The App With Third Username "${SWAG_LABS_USERNAME_3}" And password "${SWAG_LABS_PASSWORD}"
  Then I Will not See Lists Of Products But I Continue With My Test 
  And I Can Terminate The App And Dont See Products 

Login With No Username 
  Set Env Vars For Password In Swaglabs
  When I Am On SwagLabs Loginpage
  Given Im Try To Login On The App With Password "${SWAG_LABS_PASSWORD}" And No Username
  Then I Should See Error Message That I Miss A Username
  And I Can Terminate The App And Dont See Products 

Login With No Password
  Set Env Vars For Username 1 In Swaglabs
  When I Am On SwagLabs Loginpage
  GIVEN Im Try To Login On The App With Fifth Username "${BAD_USERNAME}" And No Password
  Then I Should See Error Message That I Miss A Password
  And I Can Terminate The App And Dont See Products 

Validate That Password Word Is Not Visible On LoginPage 
  When I Am On SwagLabs Loginpage
  Given I Try To Scrool on Loginpage
  Then I Should Not See Any Password Details 

 
### TODO ### IMPLEMENT TEST THAT WHEN YOU TYPE IN YOUR PASSAWORD ITS MASKED ITS NOT VISBLE FOR THE USER


 

