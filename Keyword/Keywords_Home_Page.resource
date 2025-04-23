
*** Settings ***
Documentation     This is a resource file, that contains keywords for homepage screen on Iphone

Library      AppiumLibrary
Resource     ../Pages_Objects_Model/Home_Page.resource
Resource     ../Pages_Objects_Model/Map_App.resource

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
    Capture Page Screenshot   #Take a screenshot to show as evidence that the app now is on my device 
  
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

I Start To Shake My Iphone 
  Log  I Start To Shake My Iphone 

I Start To Drag And Drop One App 
  Log  I Start To Drag And Drop The App

I Should Be Able To Swipe Around Some Pages 
  Swipe By Percent    10    50    90    50  ## SWIPE FROM LEFT TO RIGHT
  Swipe By Percent    90    50    10    50  ## SWIPE FROM RIGHT TO LEFT 
  Swipe By Percent    10    50    90    50  ## SWIPE FROM LEFT TO RIGHT
  Swipe By Percent    90    50    10    50  ## SWIPE FROM RIGHT TO LEFT 
  Swipe By Percent    90    50    10    50  ## SWIPE FROM RIGHT TO LEFT 

I Can Flick The Screen Up And Down Two Times
  Flick	100	100	100	400	# Flicks the screen up.
  Flick	140	400	100	100	# Flicks the screen down.
  Flick	100	100	100	400	# Flicks the screen up.
  Flick	140	400	100	100	# Flicks the screen down.

I Can Flick The Screen Horizontal Back And Forward
  Flick    100   200   500   200  ## Flick from Left (100) To Right (500)
  Flick    100   200   500   200  ## Flick from Left (100) To Right (500)
  Flick    500   300   100   200  ## Flick from Right (500) To Left (100)
  Flick    100   200   500   200  ## Flick from Left (100) To Right (500)
  Flick    500   300   100   200  ## Flick from Right (500) To Left (100)

I Flick The screen up
  Flick	100	100	100	400	# Flicks the screen up.

I Open Upp Safari With Flick App Can Do Search
  I Flick The screen up
  Wait Until Element Is Visible    ${SPOTLIGHT_SEARCH_FIELD}
  Element Should Be Enabled    ${SPOTLIGHT_SEARCH_FIELD}    
  Input Text    ${SPOTLIGHT_SEARCH_FIELD}   g
  Tap With Number Of Taps  ${CLEAR_SPOTLIGHT_SEARCH_FIELD}   1    1
  Tap With Number Of Taps    ${SPOTLIGHT_SEARCH_FIELD}       1    1
  Input Text   ${SPOTLIGHT_SEARCH_FIELD}      Safari 
  Wait Until Element Is Visible    ${SAFARI_SEARCH_RESULT}  
  Tap With Number Of Taps  ${SAFARI_SEARCH_RESULT}   1   1

Start Video of My Test on The Screen 
  Sleep  20s  ## Good To Have so you can start the recording from where you want 
  Log To Console   Now we start the recording start test  ## Good to have a message to view in console then you know when to start testing 
  Start Screen Recording   60s 
  Sleep  60s
  Log To Console  Okay now time is out stop testing 

Stop Recording Of My Test On The Screen
  Stop Screen Recording  ${RECORD_FILENAME} 
  Sleep  10s 
  Log to console  Now we have stopped the recording Go and See file ${RECORD_FILENAME} for more details 

I Can Tap On Map Widget Icon On My Screen 
  Swipe By Percent    10    50    90    50
  Tap With Number Of Taps    ${MAPS_WIDGET_ICON}   1   1

I Can Be Able To Shake My Iphone 
  Shake
  ${Shake_Is_True_On_My_Iphone}=    Run Keyword And Return Status   Shake
  Run Keyword If    '${Shake_Is_True_On_My_Iphone}' == 'True'    Log    I have now shaken my Iphone It Works

I Can Change My Iphone To Portrait Position
  Portrait
  ${Portait_Is_True_On_My_Iphone}=    Run Keyword And Return Status   Shake
  Run Keyword If    '${Portait_Is_True_On_My_Iphone}' == 'True'    Log    I have now changed my Iphone to Portrait position

# THIS KEYWORD DIDN`T WORK ON THE EMULATOR BUT THIS IS HOW KEYWORD SHOULD BE 
I Can Change My Iphone To Landscape Position
  Landscape
  ${Landscape_Is_True_On_My_Iphone}=    Run Keyword And Return Status   Shake
  Run Keyword If    '${Landscape_Is_True_On_My_Iphone}' == 'True'    Log    I have now changed my Iphone to Landscape position

# THIS IS HOW YOU DO DRAG AND DROP ON THE IPHONE BUT IT DON´T WORK ON IPHONE

I Should Be Able to Drag And Drop Apps On Device 

    # Wait for the elements to be visible
    Wait Until Element Is Visible  ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
    Wait Until Element Is Visible  ${ELEMENT_XPATH_SAFARI_APP_ICON}

    # Capture the initial position of the SwagLabs App Icon (before the drag)
    ${initial_position}=  AppiumLibrary.Get Element Location  ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
    Log  Initial Position: ${initial_position}

    # Perform scroll down to ensure the element is visible if it's off-screen
    Scroll Down  ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}

    # Perform drag and drop by element locator (from source to target)
    AppiumLibrary.Drag And Drop  ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}   ${ELEMENT_XPATH_SAFARI_APP_ICON}     

    # Capture the final position of the SwagLabs App Icon (after the drag)
    ${final_position}=  AppiumLibrary.Get Element Location  ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
    Log  Final Position: ${final_position}

    # Optionally, compare the initial and final positions to ensure it was moved
    Run Keyword If  ${initial_position['x']} != ${final_position['x']}  Log  The element has moved in the X direction.
    Run Keyword If  ${initial_position['y']} != ${final_position['y']}  Log  The element has moved in the Y direction.
    Run Keyword If  ${initial_position['x']} == ${final_position['x']}  Log  The element has not moved in the X direction.
    Run Keyword If  ${initial_position['y']} == ${final_position['y']}  Log  The element has not moved in the Y direction. 
    
I Uninstall My App On My Iphone Device 
  Capture Page Screenshot  # Take a Screeshot to show in the log that my app is on my Iphone Screen 
  Remove Application    ${SWAG_APP_BUNDLE_ID}
  Sleep    10s
  Run Keyword And Return Status    Remove Application    ${SWAG_APP_BUNDLE_ID}

I Can Verify That My App Is No Longer on My Iphone Device 
  Wait Until Page Does Not Contain Element    ${SWAG_APP_BUNDLE_ID}
  Page Should Not Contain Element    ${SWAG_APP_BUNDLE_ID}

I Take A Screenshot To Show That My App Is Not On Iphone 
  Capture Page Screenshot
  

I Take A Screenshot To Show That My App Has Been Moved 
  Capture Page Screenshot
  Swipe By Percent    10    50    90    50