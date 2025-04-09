
*** Settings ***

Documentation    This is a testsuite to start the Iphone and start my test app
... 

Library  AppiumLibrary
Library  String
Resource  ../../Pages_Objects_Model/homepage.resource
Resource  ../../Keyword/keywords_Homepage.resource



# *** Variables ***
# ${PLATFORM_NAME}     iOS
# ${AUTOMATION_NAME}   XCUITest
# ${PLATFORM_VERSION}  18.4
# ${UDID}             FDE4A732-C405-46BC-A037-984FDE52312C
# ${DEVICE_NAME}      iPhone 16
# ${URL}              http://127.0.0.1:4723
# ${APP_PATH}         /Users/hanino/appium/node_modules/appium-xcuitest-driver/node_modules/appium-webdriveragent/iOS.Simulator.SauceLabs.Mobile.Sample.app.2.7.1.app
# ${ELEMENT_XPATH}    //XCUIElementTypeIcon[@name="Safari"]
# ${ELEMENT_XPATH2}   //XCUIElementTypeOther[@name="CapsuleNavigationBar?isSelected=true&isDistractionControlOverlayUp=false"]
# ${ELEMENT_XPATH3}   //XCUIElementTypeApplication[@name="Safari"]/XCUIElementTypeWindow[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]
# ${ELEMENT_XPATH4}   //XCUIElementTypeButton[@name="CancelBarItemButton"]
# ${BUTTON_IDNAME}    //XCUIElementTypeButton[@name="CancelBarItemButton"]

# *** Keywords ***
# Start Iphone Should Open
#     [Arguments]    ${url}    ${platform_name}    ${automation_name}    ${platform_version}    ${device_name}    ${new_command_timeout}    ${connect_hardware_keyboard}    ${udid}    
#     Open Application    ${url}    platformName=${platform_name}    automationName=${automation_name}    platformVersion=${platform_version}    deviceName=${device_name}    newCommandTimeout=${new_command_timeout}    connectHardwareKeyboard=${connect_hardware_keyboard}    udid=${udid}    
#     Log to Console     I Open My ${device_name} now we can start testing

# I Install And Open My App 
#     [Arguments]    ${url}    ${platform_name}    ${automation_name}    ${platform_version}    ${device_name}    ${new_command_timeout}    ${connect_hardware_keyboard}    ${udid}    ${app_path}
#     Open Application    ${url}    platformName=${platform_name}    automationName=${automation_name}    platformVersion=${platform_version}    deviceName=${device_name}    newCommandTimeout=${new_command_timeout}    connectHardwareKeyboard=${connect_hardware_keyboard}    udid=${udid}    app=${app_path}
#     Log to Console     I installed My App from this file ${APP_PATH} now we can start play with this app 


*** Test Cases ***

Start My Iphone 16 Device
   Given I Press Start Button on my Iphone
   When I Start the Iphone   ${URL}    platform_name=${PLATFORM_NAME}    automation_name=${AUTOMATION_NAME}    platform_version=${PLATFORM_VERSION}    device_name=${DEVICE_NAME}    new_command_timeout=0    connect_hardware_keyboard=${True}    udid=${UDID}  
   Then I Should See Safari App On My Device Screen
   AND The Safari App Should Be Enabled

# As A User i Want To be Able To Open My Iphone 16 Mobile And Start To Use It 
#     Start Iphone Should Open    ${URL}    platform_name=${PLATFORM_NAME}    automation_name=${AUTOMATION_NAME}    platform_version=${PLATFORM_VERSION}    device_name=${DEVICE_NAME}    new_command_timeout=0    connect_hardware_keyboard=${True}    udid=${UDID}  


# As A User i Want To be Able To Open My Iphone 16 Mobile and Install My Own App On It
#    I Install And Open My App    ${URL}    platform_name=${PLATFORM_NAME}    automation_name=${AUTOMATION_NAME}    platform_version=${PLATFORM_VERSION}    device_name=${DEVICE_NAME}    new_command_timeout=0    connect_hardware_keyboard=${True}    udid=${UDID}    app_path=${APP_PATH}


 