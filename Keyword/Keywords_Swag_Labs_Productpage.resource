*** Settings ***
Library    AppiumLibrary
Library    String
Library    ../LoadEnv.py  # Ensure this path is correct
Resource   ../Pages_Objects_Model/Swag_Labs_app_homepage.resource
Resource   ../Pages_Objects_Model/Swag_Labs_Productpage.resource
Resource   ../Pages_Objects_Model/homepage.resource
Resource   ../Keyword/Keywords_Swag_Labs_homepage.resource

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
  Wait Until Element Is Visible    ${Swag_Labs_Scrool_Element} 
  Click Element    ${Swag_Labs_Scrool_Element} 

I should be able to scroll up and down 
  Scroll Down    ${Swag_Labs_Scrool_Element}
  Scroll Up    ${Swag_Labs_Scrool_Element}

I should Click On Product Picture To Get More Information About It
  Wait Until Element Is Visible    ${PRODUCT_1_IMAGE}    
  Click Element    ${PRODUCT_1_IMAGE}  
  Element Should Contain Text    ${PRODUCT_1_DESCRIPTION}    sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection
  Element Should Not Contain Text    ${PRODUCT_1_DESCRIPTION}    this is a bad product don`t buy it 
  Scroll Down     ${Swag_Labs_Scrool_Product_Detail} 
  Sleep    2s
  Scroll Up     ${Swag_Labs_Scrool_Product_Detail} 
  Wait Until Element Is Visible    ${PRODUCT_1_DESCRIPTION}  2s
  
I Can Go Back To See The Other Products 
  Click Element    ${Button_Back_To_Other_Products} 
  Scroll Down    ${Swag_Labs_Scrool_Element}
  Wait Until Element Is Visible  ${PRODUCT_2_IMAGE}  2s
  Element Should Be Visible    ${PRODUCT_2_IMAGE}
  Element Should Be Enabled    ${PRODUCT_2_IMAGE}
  Scroll Up    ${Swag_Labs_Scrool_Element}
  Wait Until Element Is Visible   ${PRODUCT_1_IMAGE}  2s
  Element Should Be Visible    ${PRODUCT_1_IMAGE}
  Element Should Be Enabled    ${PRODUCT_1_IMAGE}
  Terminate Application    ${SWAG_APP_BUNDLE_ID}

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
  Terminate Application    ${SWAG_APP_BUNDLE_ID}
  
  
I Can Terminate The App And Dont See Products 
  Terminate Application    ${SWAG_APP_BUNDLE_ID}
  Page Should Not Contain Element  ${PRODUCT_2_IMAGE}


  
  