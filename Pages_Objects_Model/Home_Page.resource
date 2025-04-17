*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords for homepage
...               on my iphone and startupp settings that is necessary to start my Iphone
...    

*** Comments ***

This is Variaables for start Iphone simulator iphone 16. Some variables  is taken from the XPATH Elements and others with ID from Appium Inspector


*** Variables ***

${ELEMENT_XPATH_SWAG_LABS_APP_ICON}    //XCUIElementTypeIcon[@name="SwagLabsMobileApp"]
${ELEMENT_XPATH_MAPS_APP_ICON}    (//XCUIElementTypeIcon[@name="Kartor"])[2]
${ELEMENT_XPATH_SAFARI_APP_ICON}    //XCUIElementTypeIcon[@name="Safari"]
${HEALT_APP_ICON}   //XCUIElementTypeIcon[@name="Hälsa"][3]
${ID_HOMESCREEN_APP_ICONS}   Home screen icons
${APP_LIBRARY_SEARCH_FIELD}  dewey-search-field
${SCROLL_HOME_GRABBER}   Home Grabber
${PICTURES_TYPECELL_ICON_APP}      //XCUIElementTypeCell[@name="Bilder"]
${INDEX_OF_APPS_SCROLLBAR}    Avsnittsindex

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





