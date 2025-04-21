*** Settings ***
Documentation     This is a test suite for second part of workflows from buying a product in Swaglabs app 
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


*** Test Cases ***


### GO MANUALLY IN TO CART VIEW PAGE WITH ONE PRODUCT AND RUN PART 2 FROM THERE 

# Happy Flow Buy Products Part 2 
#   When I Am In Cart View page
#   Given I Can Start Checkout And Fill In My Personal Details
#   Then I Can Complete The Checkout And Get Confirmation Of My Purchase With Right Product Information
#   AND I Can Close The Case And Go Back To Product List 



 






 

