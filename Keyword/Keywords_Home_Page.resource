
*** Settings ***
Documentation     This is a resource file, that contains variables for homepage 

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

I Start To Flick With My Fingers 
  Log  I am just start to flich 

I Should Be Able To Swipe Around Some Pages 
  Swipe By Percent    10    50    90    50  ## SWIPE FROM LEFT TO RIGHT
  Swipe By Percent    90    50    10    50  ## SWIPE FROM RIGHT TO LEFT 
  Swipe By Percent    10    50    90    50  ## SWIPE FROM LEFT TO RIGHT
  Swipe By Percent    90    50    10    50  ## SWIPE FROM RIGHT TO LEFT 
  Swipe By Percent    90    50    10    50  ## SWIPE FROM RIGHT TO LEFT 

I Can Flip The Screen Up And Down Two Times
  Flick	100	100	100	400	# Flicks the screen up.
  Flick	140	400	100	100	# Flicks the screen down.
  Flick	100	100	100	400	# Flicks the screen up.
  Flick	140	400	100	100	# Flicks the screen down.

I Can Flip The Screen Horizontal Back And Forward
  Flick    100   200   500   200  ## Flick from Left (100) To Right (500)
  Flick    100   200   500   200  ## Flick from Left (100) To Right (500)
  Flick    500   300   100   200  ## Flick from Right (500) To Left (100)
  Flick    100   200   500   200  ## Flick from Left (100) To Right (500)
  Flick    500   300   100   200  ## Flick from Right (500) To Left (100)



### TODO ### IMPLEMENT FLICK TESTING Flick   100  100  100  400  FLICK THE SCREEN UPP MEANS YOU CAN FLICK AND GET A SEARCH OPTION IN YOUR IPHONE 

#   Scroll Down   ${SCROLL_HOME_GRABBER}
#   Scroll Up    ${SCROLL_HOME_GRABBER}
  
### SPlit THIS SImulate that this is how you do drag and dopr but i dont work on simulator 

# Drag And Drop Using Elements Without Show It On The Simulator Device 
#     # Wait for the elements to be visible
#     Wait Until Element Is Visible  ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
#     Wait Until Element Is Visible  ${ELEMENT_XPATH_SAFARI_APP_ICON}

#     # Capture the initial position of the SwagLabs App Icon (before the drag)
#     ${initial_position}=  AppiumLibrary.Get Element Location  ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
#     Log  Initial Position: ${initial_position}

#    ${initial_position}=  AppiumLibrary.Get Element Location   ${ELEMENT_XPATH_FITNESS_APP_ICON}  
#     Log  Initial Position: ${initial_position}

#     # Perform scroll down to ensure the element is visible if it's off-screen
#     Scroll Down  ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}

#     # Perform drag and drop by element locator (from source to target)
#     AppiumLibrary.Drag And Drop  ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}   ${ELEMENT_XPATH_FITNESS_APP_ICON}      

#     # Capture the final position of the SwagLabs App Icon (after the drag)
#     ${final_position}=  AppiumLibrary.Get Element Location  ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
#     Log  Final Position: ${final_position}

#     # Optionally, compare the initial and final positions to ensure it was moved
#     Run Keyword If  ${initial_position['x']} != ${final_position['x']}  Log  The element has moved in the X direction.
#     Run Keyword If  ${initial_position['y']} != ${final_position['y']}  Log  The element has moved in the Y direction.
#     Run Keyword If  ${initial_position['x']} == ${final_position['x']}  Log  The element has not moved in the X direction.
#     Run Keyword If  ${initial_position['y']} == ${final_position['y']}  Log  The element has not moved in the Y direction.
