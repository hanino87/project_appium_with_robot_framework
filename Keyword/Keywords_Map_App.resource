
*** Settings ***
Documentation     This is a resource file, that contains keywords for homepage for Map app 

Library      AppiumLibrary
Resource     ../Pages_Objects_Model/Home_Page.resource
Resource     ../Pages_Objects_Model/Map_App.resource



*** Keywords ***

# I Can Handle All Popup Windows
#   Sleep  30s 
#   Wait Until Element Is Visible    ${ALERT_WINDOW2} 
#   Tap With Number Of Taps  ${ALERT_WINDOW2}  1  1 
#   Sleep  30s 
#   Skip If  ${BUTTON_NOT_NOW_IN_POPUP_WINDOW}  is not visible
#   Wait Until Element Is Visible    ${BUTTON_NOT_NOW_IN_POPUP_WINDOW}
#   Skip If  ${BUTTON_NOT_NOW_IN_POPUP_WINDOW}  is not visible
#   Tap With Number Of Taps    ${BUTTON_NOT_NOW_IN_POPUP_WINDOW}  1   1
#   Sleep  30s 
#   Skip If  ${BUTTON2_CONTINUE_IN_POPUP_WINDOW}  is not visible
#   Wait Until Page Contains Element    ${BUTTON2_CONTINUE_IN_POPUP_WINDOW}
#   Skip If  ${BUTTON2_CONTINUE_IN_POPUP_WINDOW}  is not visible
#   Tap With Number Of Taps   ${BUTTON2_CONTINUE_IN_POPUP_WINDOW}  1  1 

I Can Handle All Popup Windows
  Sleep    10s
  Wait Until Element Is Visible    ${ALERT_WINDOW2} 
  Tap With Number Of Taps  ${ALERT_WINDOW2}  1  1 
  Wait Until Page Does Not Contain Element    ${ALERT_WINDOW2}
  Sleep  10s 
  Run Keyword And Continue On Failure    Element should be visible   ${BUTTON_NOT_NOW_IN_POPUP_WINDOW}
  Run Keyword And Continue On Failure   Tap With Number Of Taps    ${BUTTON_NOT_NOW_IN_POPUP_WINDOW}  1   1
  Sleep  10s 
  Run Keyword And Continue On Failure   Page Should Contain Element   ${BUTTON2_CONTINUE_IN_POPUP_WINDOW}
  Run Keyword And Continue On Failure   Tap With Number Of Taps   ${BUTTON2_CONTINUE_IN_POPUP_WINDOW}  1   1 
 

 
  
I Can Zoom In City Umeå On The Mapp   ## THIS IS HOW IT SHOULD WORK BUT CANT SHOW WHEN RUN ROBOT FILE BEACUE ITS A SIMULATOR DEVICE 
  Wait Until Element Is Visible    ${UMEÅ_ICON}
  Tap With Number Of Taps    ${UMEÅ_ICON}   1   1
  Tap With Number Of Taps     ${UMEÅ_ICON}  1  1
  log  Now i have simulated to zoom on my map app see screenshoot to verify that i got Umeå information 
  Capture Page Screenshot
  Terminate Application    ${MAP_BUNDLE_ID}  

