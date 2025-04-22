
*** Settings ***
Documentation     This is a resource file, that can contains keywords For Picture App
...               

Library      AppiumLibrary
Resource     ../Pages_Objects_Model/Home_Page.resource
Resource     ../Pages_Objects_Model/Picture_App.resource
Resource     ../Pages_Objects_Model/Map_App.resource


*** Keywords ***

I Should Tap And Open Picture App And Scrooling In It
  Tap With Number Of Taps  ${APP_LIBRARY_SEARCH_FIELD}  1  1  ## One Tap One Touch Point 
  Tap With Number Of Taps   ${PICTURES_TYPECELL_ICON_APP}   1  1  ## One Tap One Touch Point 
  Wait Until Element Is Visible     ${BUTTON_CONTINUE_IN_POPUP_WINDOW}  15s
  Element Should Be Visible    ${BUTTON_CONTINUE_IN_POPUP_WINDOW}
  Element Should Be Enabled    ${BUTTON_CONTINUE_IN_POPUP_WINDOW}
  Tap With Number Of Taps   ${BUTTON_CONTINUE_IN_POPUP_WINDOW}  1  1
  Wait Until Element Is Visible    ${AlERT_WINDOW}  10s 
  Element Should Be Visible    ${AlERT_WINDOW}
  Tap With Number Of Taps   ${AlERT_WINDOW}  1  1
  Wait Until Element Is Visible    //XCUIElementTypeOther[@name="Vertikal rullningslist, 4 sidor"][2]
  Scroll Down    //XCUIElementTypeOther[@name="Vertikal rullningslist, 4 sidor"][2]
  Scroll Down    //XCUIElementTypeOther[@name="Vertikal rullningslist, 4 sidor"][2]
  Scroll Down    //XCUIElementTypeOther[@name="Vertikal rullningslist, 4 sidor"][2]
  Scroll Up    //XCUIElementTypeOther[@name="Vertikal rullningslist, 4 sidor"][2]
  Scroll Up     //XCUIElementTypeOther[@name="Vertikal rullningslist, 4 sidor"][2] 
  Click Element   //XCUIElementTypeButton[@name="bookmark-shelf-details-disclosure" and @label="Fastnålade samlingar"]



I Can Open With Tap Map Shortcut And Go Out With Tap And Close App
  Tap With Number Of Taps   //XCUIElementTypeImage[@name="map"][1]  1  1 
  Swipe By Percent    90    10   50   10
  Tap With Number Of Taps     Fastnålade samlingar   1    1 
  Terminate Application    com.apple.mobileslideshow
  Log    Im done i could tap and scrooling 