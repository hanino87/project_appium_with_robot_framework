*** Settings ***

Documentation     This is a resource file, that contains keywords for Swaglabs product actions

Library    AppiumLibrary
Library    String
Library    ../LoadEnv.py  # Ensure this path is correct

Resource   ../Pages_Objects_Model/Swaglabs_App_Home_Page.resource
Resource   ../Pages_Objects_Model/Swaglabs_Cart_Page.resource
Resource   ../Pages_Objects_Model/Swaglabs_Checkout_Information_Page.resource
Resource   ../Pages_Objects_Model/Swaglabs_Checkout_Overview_Page.resource
Resource   ../Pages_Objects_Model/Swaglabs_Checkout_Complete_Page.resource
Resource   ../Pages_Objects_Model/Home_Page.resource
Resource   ../Keyword/Keywords_Swaglabs_Home_Page.resource

*** Keywords ***

I Am In Cart View page
  log  im am on the cart view page right now 

I Can Add A Product To Cart 
  Wait Until Element Is Visible    ${ADD_TO_CART_BUTTON1}
  Element Should Be Enabled   ${ADD_TO_CART_BUTTON1}
  Element Text Should Be    ${ADD_TO_CART_BUTTON1}    ADD TO CART
  Element Should Not Contain Text    ${ADD_TO_CART_BUTTON1}    REMOVE 
  Tap With Number Of Taps   ${ADD_TO_CART_BUTTON1}   1   1 


I Can Verify That It's One Product In The Cart 
  Scroll Up  ${SWAG_LABS_CART_ICON_WITH_ONE_PRODUCT} 
  Wait Until Element Is Visible   ${SWAG_LABS_CART_ICON_WITH_ONE_PRODUCT}    timeout=10s 
  Page Should Not Contain Element    ${SWAG_LABS_CART_ICON_EMPTY_BASKET} 
 

I Can Verify That It's Three Product In The Cart 
  Scroll Up  ${SWAG_LABS_SCROOL_ELEMENT}
  Wait Until Element Is Visible   ${SWAG_LABS_CART_ICON_WITH_THREE_PRODUCTS}    timeout=10s 
  Page Should contain Element    ${SWAG_LABS_CART_ICON_WITH_THREE_PRODUCTS}  
  Click Element   ${SWAG_LABS_CART_ICON_WITH_THREE_PRODUCTS}  
  log  I take a picture to confirm that i have 3 items in the cart 
  Capture Page Screenshot
  Terminate Application    ${SWAG_APP_BUNDLE_ID}


I Should Be Able To Click On The Cart Icon 
  Element Should Be Enabled    ${SWAG_LABS_CART_ICON_WITH_ONE_PRODUCT} 
  Click Element    ${SWAG_LABS_CART_ICON_WITH_ONE_PRODUCT} 

I Can Add Two More Product To My Cart With Different Search Options 
  Element Should Be Enabled    ${PRODUCT_SELECTOR_BUTTON} 
  Tap With Number Of Taps     ${PRODUCT_SELECTOR_BUTTON}     1  1
  Element Should Be Enabled    ${DROPLIST_OPTION_SORT_PRICE_LOW_TO_HIGH}
  Tap With Number Of Taps    ${PRODUCT_CHANGE_VIEW_OF_PRODUCTS}     1    1
  Tap With Number Of Taps   ${DROPLIST_OPTION_SORT_Z_TO_A}  1  1 
  log    I take a picture as evidence
  Capture Page Screenshot
  Scroll Down   ${SWAG_LABS_SCROOL_ELEMENT}
  Scroll Down   ${SWAG_LABS_SCROOL_ELEMENT}
  Scroll Up    ${SWAG_LABS_SCROOL_ELEMENT}
  Scroll Up    ${SWAG_LABS_SCROOL_ELEMENT}
  Wait Until Element Is Visible    ${PRODUCT2_IMAGE}   
  Tap With Number Of Taps  ${PRODUCT2_IMAGE}  1  1 
  Scroll Down  ${PRODUCT2_IMAGE}
  element should be enabled  test-ADD TO CART  
  Tap With Number Of Taps   test-ADD TO CART  1  1 
  Scroll Up      ${PRODUCT2_IMAGE}
  Wait Until Page Contains Element    ${BUTTON_BACK_TO_OTHER_PRODUCTS}
  Element Should Be Enabled     ${BUTTON_BACK_TO_OTHER_PRODUCTS}
  Tap With Number Of Taps   ${BUTTON_BACK_TO_OTHER_PRODUCTS}  1  1 
  scroll up  ${SWAG_LABS_SCROOL_ELEMENT}
  Tap With Number Of Taps     ${PRODUCT_SELECTOR_BUTTON}     1  1
  Tap With Number Of Taps   ${DROPLIST_OPTION_SORT_PRICE_LOW_TO_HIGH}  1  1
  log    I take a picture as evidence
  Capture Page Screenshot
  Scroll down   ${SWAG_LABS_SCROOL_ELEMENT}
  Scroll down   ${SWAG_LABS_SCROOL_ELEMENT}
  Scroll up    ${SWAG_LABS_SCROOL_ELEMENT}
  Wait Until Page Contains Element    ${PRODUCT3_IMAGE}
  Tap With Number Of Taps    ${PRODUCT3_IMAGE}  1   1 
  Scroll Down  ${PRODUCT3_IMAGE}
  element should be enabled  test-ADD TO CART  
  Tap With Number Of Taps   test-ADD TO CART   1  1 
  Scroll Up  ${PRODUCT3_IMAGE}
  Wait Until Page Contains Element    ${BUTTON_BACK_TO_OTHER_PRODUCTS}
  Tap With Number Of Taps   ${BUTTON_BACK_TO_OTHER_PRODUCTS}  1  1 

I Can Start Checkout And Fill In My Personal Details 
  Wait Until Page Contains Element   ${CHECKOUT_BUTTON}  
  Click Element    ${CHECKOUT_BUTTON}  
  Wait Until Element Is Visible    ${TEXT_FIELD_FIRST_NAME} 
  Element Should Be Enabled    ${TEXT_FIELD_FIRST_NAME} 
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


I Can Close The Case And Go Back To Product List 
  Element Should Be Enabled    ${BACK_HOME_BUTTON}  
  Click Element    ${BACK_HOME_BUTTON}  
  Wait Until Page Does Not Contain Element    ${BACK_HOME_BUTTON}  
  Element Should Be Visible    ${SWAG_LABS_HOMEPAGE}   
  Log  I'm done with my order now i will search for annother product 









