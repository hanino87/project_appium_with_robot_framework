
*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.

Library      AppiumLibrary
Resource     ../Pages_Objects_Model/Home_Page.resource



*** Comments ***

Below is keyword metods to handle installation of Iphone and Swag Labs app 
*** Keywords ***

I Press Start Button On My Iphone
  Log To Console   Im Open My ${device_name} to start test 

I Start The Iphone 
    [Arguments]    ${url}    ${platform_name}    ${automation_name}    ${platform_version}    ${device_name}    ${new_command_timeout}    ${connect_hardware_keyboard}    ${udid}    
    Open Application    ${url}    platformName=${platform_name}    automationName=${automation_name}    platformVersion=${platform_version}    deviceName=${device_name}    newCommandTimeout=${new_command_timeout}    connectHardwareKeyboard=${connect_hardware_keyboard}    udid=${udid}    
    Log to Console     I have now open My ${device_name} now we can start testing

I Should See My Home App Icons If I Go To Start Page
   Swipe By Percent    10    50    90    50   # Swipe from Left To Right To Go Back To Start Page 
   Wait Until Element Is Visible  ${ID_HOMESCREEN_APP_ICONS}     timeout=10
   Element Should Be Visible    ${ID_HOMESCREEN_APP_ICONS}  

The Safari App On My Home App Icons Should Be Enabled 
   Element Should Be Enabled     ${ELEMENT_XPATH_SAFARI_APP_ICON}

I Will Start The Installation Of The App 
    Log To Console   Im Will Now Install My ${APP_Name} 
   

I Start Installation Of My App It Should Be Installed
   [Arguments]    ${url}    ${platform_name}    ${automation_name}    ${platform_version}    ${device_name}    ${new_command_timeout}    ${connect_hardware_keyboard}    ${udid}    ${app_path}
    Open Application    ${url}    platformName=${platform_name}    automationName=${automation_name}    platformVersion=${platform_version}    deviceName=${device_name}    newCommandTimeout=${new_command_timeout}    connectHardwareKeyboard=${connect_hardware_keyboard}    udid=${udid}    app=${app_path}
    Log to Console     I have now Installed My ${device_name} now we can start testing the App
  
I Should Be Able To Terminate The App After Installation 
  Terminate Application       ${SWAG_APP_BUNDLE_ID}
 

I Would See It Afterwards On My Device Screen
   Page Should Contain Element  ${ELEMENT_XPATH_SWAG_LABS_APP_ICON} 


 I Am On A Page On My Iphone 
  Log  I am just now on a page on my iphone 

I Start To Swipe With My Fingers 
  Log  I am just start to swipe 

 I Start To Tap With My Fingers 
  Log  I am just start to tap 


I Should Be Able To Swipe Around Some Pages 
  Swipe By Percent    10    50    90    50  ## SWIPE FROM LEFT TO RIGHT
  Swipe By Percent    90    50    10    50  ## SWIPE FROM RIGHT TO LEFT 
  Swipe By Percent    10    50    90    50  ## SWIPE FROM LEFT TO RIGHT
  Swipe By Percent    90    50    10    50  ## SWIPE FROM RIGHT TO LEFT 
  Swipe By Percent    90    50    10    50  ## SWIPE FROM RIGHT TO LEFT 

I Should Be Able With Tap To Open Pictures App And Scrooling In It 
  Tap With Number Of Taps  ${APP_LIBRARY_SEARCH_FIELD}  1  1  ## One Tap One Touch Point 
  Tap With Number Of Taps   ${PICTURES_TYPECELL_ICON_APP}   1  1  ## One Tap One Touch Point 
  Scroll Down    //XCUIElementTypeOther[@name="Vertikal rullningslist, 4 sidor"][2]
  Scroll Down    //XCUIElementTypeOther[@name="Vertikal rullningslist, 4 sidor"][2]
  Scroll Up    //XCUIElementTypeOther[@name="Vertikal rullningslist, 4 sidor"][2]
  Scroll Up     //XCUIElementTypeOther[@name="Vertikal rullningslist, 4 sidor"][2]


I Should Be Able With Tap To Open Pictures And Zooming With The Picture 
  Wait Until Element Is Visible    //XCUIElementTypeScrollView[@name="LemonadeRootScrollView"]  
  Element Should Be Enabled    //XCUIElementTypeScrollView[@name="LemonadeRootScrollView"]  
  


  






### TODO ### IMPLEMENT FLICK TESTING Flick   100  100  100  400  FLICK THE SCREEN UPP MEANS YOU CAN FLICK AND GET A SEARCH OPTION IN YOUR IPHONE 

#   Scroll Down   ${SCROLL_HOME_GRABBER}
#   Scroll Up    ${SCROLL_HOME_GRABBER}
  
  
