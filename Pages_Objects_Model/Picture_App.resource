*** Settings ***
Documentation     This is a resource file, that can contain variables for Picture App
...    

*** Variables ***
${SCROOLBAR_IN_PICTURE_APP}           //XCUIElementTypeOther[@name="Vertikal rullningslist, 4 sidor"][2]
${SHORTCUT_MAPP_ICON}    //XCUIElementTypeButton[@name="bookmarks-A06B5254-54E3-4F88-8445-C5FDB06E0086"]/XCUIElementTypeOther
${BUTTON_CONTINUE_IN_POPUP_WINDOW}  //XCUIElementTypeButton[@name="Fortsätt"]
${AlERT_WINDOW}   Tillåt