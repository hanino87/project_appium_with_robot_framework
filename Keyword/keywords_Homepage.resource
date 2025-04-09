
*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.

Library      AppiumLibrary
Resource     ../Pages_Objects_Model/homepage.resource


*** Keywords ***

I Press Start Button on my Iphone
  Log To Console   Im Open My ${device_name} to start test 


I Start the Iphone 
    [Arguments]    ${url}    ${platform_name}    ${automation_name}    ${platform_version}    ${device_name}    ${new_command_timeout}    ${connect_hardware_keyboard}    ${udid}    
    Open Application    ${url}    platformName=${platform_name}    automationName=${automation_name}    platformVersion=${platform_version}    deviceName=${device_name}    newCommandTimeout=${new_command_timeout}    connectHardwareKeyboard=${connect_hardware_keyboard}    udid=${udid}    
    Log to Console     I have now open My ${device_name} now we can start testing

I Should See Safari App On My Device Screen
   Wait Until Element Is Visible  ${ELEMENT_XPATH_SAFARI_APP_ICON}    timeout=10
   Element Should Be Visible     ${ELEMENT_XPATH_SAFARI_APP_ICON}

The Safari App Should Be Enabled 
   Element Should Be Enabled     ${ELEMENT_XPATH_SAFARI_APP_ICON}


   

# I Install And Open My App 
#     [Arguments]    ${url}    ${platform_name}    ${automation_name}    ${platform_version}    ${device_name}    ${new_command_timeout}    ${connect_hardware_keyboard}    ${udid}    ${app_path}
#     Open Application    ${url}    platformName=${platform_name}    automationName=${automation_name}    platformVersion=${platform_version}    deviceName=${device_name}    newCommandTimeout=${new_command_timeout}    connectHardwareKeyboard=${connect_hardware_keyboard}    udid=${udid}    app=${app_path}
#     Log to Console     I installed My App from this file ${APP_PATH} now we can start play with this app 
