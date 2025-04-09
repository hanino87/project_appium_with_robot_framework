*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords for homepage
...               on my iphone and startupp settings that is necessary to start my Iphone
...    

*** Comments ***

This is Variaables for start Iphone simulator iphone 16 


*** Variables ***

# ${ELEMENT_XPATH_SAFARI_APP_ICON}    //XCUIElementTypeIcon[@name="Safari"]
${ELEMENT_XPATH_SWAG_APP_ICON}    //XCUIElementTypeIcon[@name="SwagLabsMobileApp"]
${ELEMENT_XPATH_MAPS_APP_ICON}    (//XCUIElementTypeIcon[@name="Kartor"])[2]
${ELEMENT_XPATH_SAFARI_APP_ICON}    //XCUIElementTypeIcon[@name="Safari"]

${PLATFORM_NAME}    iOS
${AUTOMATION_NAME}  XCUITest
${PLATFORM_VERSION}  18.4
${UDID}             FDE4A732-C405-46BC-A037-984FDE52312C
${DEVICE_NAME}      iPhone 16
${URL}              http://127.0.0.1:4723
${APP_PATH}         /Users/hanino/appium/node_modules/appium-xcuitest-driver/node_modules/appium-webdriveragent/iOS.Simulator.SauceLabs.Mobile.Sample.app.2.7.1.app





