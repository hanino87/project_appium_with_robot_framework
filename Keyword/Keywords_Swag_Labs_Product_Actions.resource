*** Settings ***
Library    AppiumLibrary
Library    String
Library    ../LoadEnv.py  # Ensure this path is correct
Resource   ../Pages_Objects_Model/Swag_Labs_App_Home_Page.resource
Resource   ../Pages_Objects_Model/Swag_Labs_Cart_Page.resource
Resource   ../Pages_Objects_Model/Swag_Labs_Checkout_Information_Page.resource
Resource   ../Pages_Objects_Model/Swag_Labs_Checkout_Overview_Page.resource
Resource   ../Pages_Objects_Model/Swag_Labs_Checkout_Complete_Page.resource
Resource   ../Pages_Objects_Model/Home_Page.resource
Resource   ../Keyword/Keywords_Swag_Labs_Home_Page.resource

*** Keywords ***

I Am In Cart View page
  log  im am on the cart view page right now 


I Can Add A Product To Cart And Compelete Checkout Information
#   Wait Until Element Is Visible    ${ADD_TO_CART_BUTTON1}
#   Click Element    ${ADD_TO_CART_BUTTON1}
#   Scroll Up  ${SWAG_LABS_CART_ICON_WITH_ONE_PRODUCT} 
#   Wait Until Element Is Visible   ${SWAG_LABS_CART_ICON_WITH_ONE_PRODUCT}    timeout=10s
#   Element Should Be Enabled  ${SWAG_LABS_CART_ICON_WITH_ONE_PRODUCT}  
#   Tap With Number Of Taps   ${SWAG_LABS_CART_ICON_WITH_ONE_PRODUCT}  1  5
#   Wait Until Page Contains Element   ${CHECKOUT_BUTTON}  
  Click Element    ${CHECKOUT_BUTTON}  
  Wait Until Element Is Visible    ${TEXT_FIELD_FIRST_NAME} 
  Click Element    ${TEXT_FIELD_FIRST_NAME} 
  Input Text Into Current Element    John
  Click Element    ${TEXT_FIELD_LAST_NAME} 
  Input Text Into Current Element    Doe 
  Click Element    ${TEXT_FIELD_POSTCODE}   
  Input Text Into Current Element    6925
  Click Element  ${CONTINUE_BUTTON}    


I Can Complete The Checkout And Get Confirmation Of My Purchase With Right Product Information
  Element Should Be Visible    ${PRODUCT_DESCRIPTION} 
  Element Text Should Be    ${PRODUCT_DESCRIPTION}     carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection. 
  Element Should Be Visible    ${PRODUCT_TITEL} 
  Element Value Should Be     ${PRODUCT_TITEL}    Sauce Labs Backpack
  Page Should Not Contain Text   ${WRONG_PRODUCT_TITLE}
  Element Should Be Visible   ${SHIPPING_TEXT_INFORMTION} 
  Element Should Be Visible   ${PAYMENT_TEXT_INFORMATION} 
  Element Should Be Visible  ${ITEM_TOTAL_PRICE_INCLUDE_TAX} 
  Page Should Not Contain Element    ${WRONG_TOTAL_PRICE}
  Scroll Down    ${SCROOL_ELEMENT} 
  Wait Until Element Is Visible    ${FINISH_BUTTON}  
  Element Should Be Enabled    ${FINISH_BUTTON}  
  Wait Until Page Contains Element    Pages_Objects_Model/Swag_Labs_Checkout_Complete_Page.resource
  Page Should Not Contain Text   ${WRONG_TEXT_FOR_ORDER}

I Can Close The Case And Go Back To Product List 
  Element Should Be Enabled    ${BACK_HOME_BUTTON}  
  Click Element    ${BACK_HOME_BUTTON}  
  Wait Until Page Does Not Contain Element    ${BACK_HOME_BUTTON}  
  Element Should Be Visible    ${SWAG_LABS_HOMEPAGE}   
  Log  Im done with my order now i will search for annother product 


### TODO ### IMPLEMENT PYTHON FUNCTION THAT GENERATES FAKED FIRSTNAME AND LASTNAME AND POSTCODE 







