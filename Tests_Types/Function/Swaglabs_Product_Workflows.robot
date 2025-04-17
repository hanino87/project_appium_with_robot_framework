*** Settings ***
Documentation     This is a test suite for the login page in SwagLabs app
...               on my iPhone 16 device 

Library    AppiumLibrary
Library    String
Library    ../../LoadEnv.py
Resource   ../../Pages_Objects_Model/Swag_Labs_App_Home_Page.resource
Resource   ../../Pages_Objects_Model/Swag_Labs_Product_Page.resource
Resource   ../../Keyword/Keywords_Swag_Labs_Home_Page.resource
Resource   ../../Keyword/Keywords_Home_Page.resource
Resource   ../../Keyword/Keywords_Swag_Labs_Product_Page.resource
Resource   ../../Keyword/Keywords_Swag_Labs_Product_Actions.resource

*** Variables ***

*** Test Cases ***

# Change Product View Of Products And See Products
#   When I Am In Product View Page After Login
#   Given I Can Change Product View List 
#   Then I Should Have Change View Of Products And Still See Them
#   AND I Can Change Product View List Again


# Click On A Prouct To View More Detail about it 
#   When I Am In Product View Page After Login
#   Given I should be able to scroll up and down 
#   Then I should Click On Product Picture To Get More Information About It
#   AND I Can Go Back To See The Other Products

# Happy Flow Buy A Product From Product List 
#   When I Am In Cart View page
#   GIVEN I Can Add A Product To Cart And Compelete Checkout Information
#   THEN I Can Complete The Checkout And Get Confirmation Of My Purchase With Right Product Information
#   AND I Can Close The Case And Go Back To Product List 


  

### TODO ### ADD TEST CART WHOLE FLOW TO TEST ADD ONE CART ITEM HAPPY PATH 


 

