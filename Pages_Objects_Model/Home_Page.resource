*** Settings ***
Documentation     This is a resource file, that can contain variables for homepage
...               on my iphone for startupp settings and some mobile functions on my Iphone 
...    
Library    OperatingSystem  # LIBRARY TO EXECUTE SYSTEM COMMANDS


*** Variables ***

${RECORD_FILENAME}   exploratory_testing

${ELEMENT_XPATH_SWAG_LABS_APP_ICON}    //XCUIElementTypeIcon[@name="SwagLabsMobileApp"]
${MAPS_APP_ICON}    //XCUIElementTypeIcon[@name="Kartor"][2]
${ELEMENT_XPATH_SAFARI_APP_ICON}    //XCUIElementTypeIcon[@name="Safari"]
${ID_HOMESCREEN_APP_ICONS}   Home screen icons
${APP_LIBRARY_SEARCH_FIELD}  dewey-search-field
${PICTURES_TYPECELL_ICON_APP}      //XCUIElementTypeCell[@name="Bilder"]
${INDEX_OF_APPS_SCROLLBAR}    Avsnittsindex
${SAFARI_BUNDLE_ID}          com.apple.mobilesafari
${PICTURE_BUNDLE_ID}         com.apple.mobileslideshow
${SPOTLIGHT_SEARCH_FIELD}   //XCUIElementTypeTextField[@name="SpotlightSearchField"]/XCUIElementTypeOther
${CLEAR_SPOTLIGHT_SEARCH_FIELD}  Rensa text
${SAFARI_SEARCH_RESULT}     //XCUIElementTypeIcon[@name="Safari"]/XCUIElementTypeOther[3]

${PLATFORM_NAME}    iOS
${AUTOMATION_NAME}  XCUITest
${PLATFORM_VERSION}  18.4
${UDID}             FDE4A732-C405-46BC-A037-984FDE52312C
${DEVICE_NAME}      iPhone 16
${URL}              http://127.0.0.1:4723
${APP_PATH}         /Users/hanino/appium/node_modules/appium-xcuitest-driver/node_modules/appium-webdriveragent/iOS.Simulator.SauceLabs.Mobile.Sample.app.2.7.1.app
${APP_NAME}         SwagLabs Mobile App
${SWAG_APP_BUNDLE_ID}    com.saucelabs.SwagLabsMobileApp
${connect_hardware_keyboard}  true
${new_command_timeout}     30000









