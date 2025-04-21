*** Settings ***
Library    AppiumLibrary
Library    String
Library    ../LoadEnv.py  # Ensure this path is correct
Resource   ../Pages_Objects_Model/Swaglabs_App_Home_Page.resource
Resource   ../Pages_Objects_Model/Home_Page.resource
Resource   Keywords_Swaglabs_Home_Page.resource

*** Keywords ***

I Am In Product View Page 
  log  Im in the views for products 

I Am In Product View Page After Login
  Open Application    ${url}    platformName=${platform_name}    automationName=${automation_name}    platformVersion=${platform_version}    deviceName=${device_name}    newCommandTimeout=${new_command_timeout}    connectHardwareKeyboard=${connect_hardware_keyboard}    udid=${udid} 
  Set Env Vars For Username 1 In Swaglabs
  Set Env Vars For Password In Swaglabs
  Im Try To Login On The App With Third Username "${SWAG_LABS_USERNAME_1}" And Password "${SWAG_LABS_PASSWORD}"
  log  Im in the views for products after i logged into the system 
  

I click on the right side of the screen 
  Wait Until Element Is Visible    ${SWAG_LABS_SCROOL_ELEMENT} 
  Click Element    ${SWAG_LABS_SCROOL_ELEMENT} 

I should be able to scroll up and down 
  Scroll Down    ${SWAG_LABS_SCROOL_ELEMENT} 
  Scroll Up   ${SWAG_LABS_SCROOL_ELEMENT} 

I should Click On Product Picture To Get More Information About It
  Wait Until Element Is Visible    ${PRODUCT_1_IMAGE}    
  Click Element    ${PRODUCT_1_IMAGE}  
  Element Should Contain Text    ${PRODUCT_1_DESCRIPTION}    sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection
  Element Should Not Contain Text    ${PRODUCT_1_DESCRIPTION}    this is a bad product don`t buy it 
  Scroll Down     ${SWAG_LABS_SCROOL_PRODUCT1_DETAIL} 
  Sleep    2s
  Scroll Up     ${SWAG_LABS_SCROOL_PRODUCT1_DETAIL} 
  Wait Until Element Is Visible    ${PRODUCT_1_DESCRIPTION}  2s
  
I Can Go Back To See The Other Products 
  Click Element    ${BUTTON_BACK_TO_OTHER_PRODUCTS} 
  Scroll Down    ${SWAG_LABS_SCROOL_ELEMENT}
  Wait Until Element Is Visible  ${PRODUCT_2_IMAGE}  2s
  Element Should Be Visible    ${PRODUCT_2_IMAGE}
  Element Should Be Enabled    ${PRODUCT_2_IMAGE}
  Scroll Up    ${Swag_Labs_Scrool_Element}
  Wait Until Element Is Visible   ${PRODUCT_1_IMAGE}  2s
  Element Should Be Visible    ${PRODUCT_1_IMAGE}
  Element Should Be Enabled    ${PRODUCT_1_IMAGE} 


I Should Have Change View Of Products And Still See Them
  Scroll Down    ${Swag_Labs_Scrool_Element}
  Wait Until Element Is Visible  ${PRODUCT_2_IMAGE}  2s
  Element Should Be Visible    ${PRODUCT_2_IMAGE}
  Element Should Be Enabled    ${PRODUCT_2_IMAGE}
  Scroll Up    ${Swag_Labs_Scrool_Element}
  Wait Until Element Is Visible   ${PRODUCT_1_IMAGE}  2s
  Element Should Be Visible     ${PRODUCT_1_IMAGE}
  Element Should Be Enabled     ${PRODUCT_1_IMAGE}

I Can Change Product View List 
  Wait Until Element Is Visible  ${PRODUCT_CHANGE_VIEW_OF_PRODUCTS}     2s
  Element Should Be Visible    ${PRODUCT_CHANGE_VIEW_OF_PRODUCTS} 
  Element Should Be Enabled    ${PRODUCT_CHANGE_VIEW_OF_PRODUCTS} 
  Click Element  ${PRODUCT_CHANGE_VIEW_OF_PRODUCTS}   

I Can Change Product View List Again
  Wait Until Element Is Visible  ${PRODUCT_CHANGE_VIEW_OF_PRODUCTS}     2s
  Element Should Be Visible    ${PRODUCT_CHANGE_VIEW_OF_PRODUCTS} 
  Element Should Be Enabled    ${PRODUCT_CHANGE_VIEW_OF_PRODUCTS} 
  Click Element  ${PRODUCT_CHANGE_VIEW_OF_PRODUCTS} 
  # Terminate Application    ${SWAG_APP_BUNDLE_ID}
  
  
I Can Terminate The App And Dont See Products 
  Terminate Application    ${SWAG_APP_BUNDLE_ID}
  Page Should Not Contain Element  ${PRODUCT_2_IMAGE}

I Scroll Down To Social Media Links 
  Scroll Down     ${SWAG_LABS_SCROOL_ELEMENT}
  Scroll Down     ${SWAG_LABS_SCROOL_ELEMENT}

I Can Click On The Links 
  Element Should Be Visbile ${TWITTER_ICON}
  Element Should Be Enabled    ${TWITTER_ICON}
  Run Keyword And Ignore Error     Log   This is not good our links we cant click on it i talk with the developers a critical bug see screenshot
  Capture Page Screenshot

I Verify That Its Right Year On Copyright Text 
  Wait Until Element Is Visible    ${COPYRIGHT_TEXT}
  Element Text Should Be    ${COPYRIGHT_TEXT}   © 2025 Sauce Labs. All Rights Reserved.
  Element Should Not Contain Text    ${COPYRIGHT_TEXT}    © 2024 
  Log   Its looks god right copyright year see screenschot for evidence 
  Capture Page Screenshot


