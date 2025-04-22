*** Settings ***
Documentation     This is a resource file, that contains variables for Safari app
...               on my iphone 
...  

Library   AppiumLibrary

*** Comments ***

This is Variaables for safari homepage app  


*** Variables ***

${SAFARI_APP_ICON}    //XCUIElementTypeIcon[@name="Safari"]
${SAFARI_SEARCH_FIELD}   //XCUIElementTypeOther[@name="CapsuleViewController"]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]
${ELEMENT_XPATH3}   //XCUIElementTypeApplication[@name="Safari"]/XCUIElementTypeWindow[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]
${ELEMENT_XPATH4}   //XCUIElementTypeButton[@name="CancelBarItemButton"]
${HAMMARBY_SEARCH_RESULT}   Hammarby 
${CLEAR_SEARCH_BUTTON}  ClearTextButton
${SAFARI_BUNDLE_ID}    com.apple.mobilesafari







 

