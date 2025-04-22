*** Settings ***
Documentation     This is a resource file, that can contain variables for Map App
...    

*** Variables ***
${BACK_BUTTON}    Fastnålade samlingar
${MAPS_APP_ICON}    //XCUIElementTypeIcon[@name="Kartor"][2]
${BUTTON_CONTINUE_IN_POPUP_WINDOW}  //XCUIElementTypeButton[@name="Fortsätt"]
${AlERT_WINDOW}    Tillåt
${ALERT_WINDOW2}   //XCUIElementTypeButton[@name="Tillåt en gång"]
${UMEÅ_ICON}    //XCUIElementTypeOther[@name="VKPointFeature" and @label="Umeå"]
${BUTTON_NOT_NOW_IN_POPU_WINDOW}  //XCUIElementTypeButton[@name="Inte nu"]
${BUTTON2_CONTINUE_IN_POPUP_WINDOW}   //XCUIElementTypeStaticText[@name="Fortsätt"]
${MAP_BUNDLE_ID}   com.apple.Maps 
${MAPS_WIDGET_ICON}  //XCUIElementTypeIcon[@name="Kartor" and @value="Widget"]
