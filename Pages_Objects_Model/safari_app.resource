*** Settings ***
Documentation     This is a resource file, that contains variables and  for Safari app
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
${GOOGEL_TEXT_READ_MORE}    Läs mer
${GOOGEL_BUTTON_APPROVE_ALL}  Godkänn alla
${HAMMARBY_SEARCH_RESULT}   Hammarby 
${CLEAR_SEARCH_BUTTON}  ClearTextButton







 

