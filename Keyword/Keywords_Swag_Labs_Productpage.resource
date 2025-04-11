*** Settings ***
Library    AppiumLibrary
Library    String
Library    ../LoadEnv.py  # Ensure this path is correct
Resource   ../Pages_Objects_Model/Swag_Labs_app_homepage.resource
Resource   ../Pages_Objects_Model/Swag_Labs_app_productpage.resource
Resource   ../Pages_Objects_Model/homepage.resource

*** Keywords ***

I Am In Product View Page 
  log  Im in the views for products 

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
  Scroll Down     ${Swag_Labs_Scrool_Product_Detail} 
  Sleep    2s
  Scroll Up     ${Swag_Labs_Scrool_Product_Detail} 
  Wait Until Element Is Visible    ${PRODUCT_1_DESCRIPTION}  2s
I Can Go Back To See The Other Products And Logout From App
  Click Element    ${Button_Back_To_Other_Products} 
  Scroll Down    ${Swag_Labs_Scrool_Element}
  Scroll Up    ${Swag_Labs_Scrool_Element}
  Terminate Application    ${SWAG_APP_BUNDLE_ID}


  
  