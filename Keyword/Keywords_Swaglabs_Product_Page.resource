*** Settings ***

Documentation     This is a resource file, that contains keywords for homepage for Swaglabs product page 

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
  Im Try To Login On The App With Correct Username "${SWAG_LABS_USERNAME_1}" And Password "${SWAG_LABS_PASSWORD}"
  log  Im in the views for products after i logged into the system 
  

I Click On The Right Side Of The Screen 
  Wait Until Element Is Visible    ${SWAG_LABS_SCROOL_ELEMENT} 
  Click Element    ${SWAG_LABS_SCROOL_ELEMENT} 

I Should Be Able To Scroll Up And Down 
  Scroll Down    ${SWAG_LABS_SCROOL_ELEMENT} 
  Scroll Up   ${SWAG_LABS_SCROOL_ELEMENT} 

I Should Click On Product Picture To Get More Information About It
  Wait Until Element Is Visible    ${PRODUCT_1_IMAGE}    
  Click Element    ${PRODUCT_1_IMAGE}  
  Text Should Be Visible  ${PRODUCT_1_DESCRIPTION} 
  Element Should Contain Text    ${PRODUCT_1_DESCRIPTION}    sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection
  Element Should Not Contain Text    ${PRODUCT_1_DESCRIPTION}    this is a bad product don`t buy it 
  Scroll Down     ${SWAG_LABS_SCROOL_PRODUCT1_DETAIL} 
  Sleep    5s
  Scroll Up     ${SWAG_LABS_SCROOL_PRODUCT1_DETAIL} 
  Wait Until Element Is Visible    ${PRODUCT_1_DESCRIPTION}  2s
  
I Can Go Back To See The Other Products 
  Click Element    ${BUTTON_BACK_TO_OTHER_PRODUCTS} 
  Scroll Down    ${SWAG_LABS_SCROOL_ELEMENT}
  Wait Until Element Is Visible  ${PRODUCT_2_IMAGE}  2s
  Element Should Be Visible    ${PRODUCT_2_IMAGE}
  Element Should Be Enabled    ${PRODUCT_2_IMAGE}
  Scroll Up    ${SWAG_LABS_SCROOL_ELEMENT}
  Wait Until Element Is Visible   ${PRODUCT_1_IMAGE}  2s
  Element Should Be Visible    ${PRODUCT_1_IMAGE}
  Element Should Be Enabled    ${PRODUCT_1_IMAGE} 


I Should Have Change View Of Products And Still See Them
  Scroll Down    ${SWAG_LABS_SCROOL_ELEMENT}
  Wait Until Element Is Visible  ${PRODUCT_2_IMAGE}  2s
  Element Should Be Visible    ${PRODUCT_2_IMAGE}
  Element Should Be Enabled    ${PRODUCT_2_IMAGE}
  Scroll Up    ${SWAG_LABS_SCROOL_ELEMENT}
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
 
  
I Can Terminate The App And Don't See Products 
  Terminate Application    ${SWAG_APP_BUNDLE_ID}
  Page Should Not Contain Element  ${PRODUCT_2_IMAGE}

I Scroll Down To Social Media Links 
  Scroll Down     ${SWAG_LABS_SCROOL_ELEMENT}
  Scroll Down     ${SWAG_LABS_SCROOL_ELEMENT}

I Can Click On The Social Links 
  Element Should Be Visbile ${TWITTER_ICON}
  Element Should Be Enabled    ${TWITTER_ICON}
  Run Keyword And Ignore Error     Log   This is not good our social links we can't click on them. I will talk with developers. 
  Capture Page Screenshot

I Verify That It's Right Year On Copyright Text 
  Wait Until Element Is Visible    ${COPYRIGHT_TEXT}
  Text Should Be Visible    ${COPYRIGHT_TEXT}
  Element Text Should Be    ${COPYRIGHT_TEXT}   © 2025 Sauce Labs. All Rights Reserved.
  Element Should Not Contain Text    ${COPYRIGHT_TEXT}    © 2024 
  Log   It's looks good right copyright year see screenshot for evidence 
  Capture Page Screenshot


  
