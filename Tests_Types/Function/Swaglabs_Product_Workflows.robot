*** Settings ***
Documentation     This is a test suite for product workflows in Swaglabs app 
...               on my iPhone 16 device 

Library    AppiumLibrary
Library    String
Library    ../../LoadEnv.py

Resource   ../../Pages_Objects_Model/Swaglabs_App_Home_Page.resource
Resource   ../../Pages_Objects_Model/Swaglabs_Product_Page.resource
Resource   ../../Keyword/Keywords_Swaglabs_Home_Page.resource
Resource   ../../Keyword/Keywords_Home_Page.resource
Resource   ../../Keyword/Keywords_Swaglabs_Product_Page.resource
Resource   ../../Keyword/Keywords_Swaglabs_Product_Actions.resource


*** Test Cases ***

Validate Change Product View Of Products And See Products
  When I Am In Product View Page After Login
  Given I Can Change Product View List 
  Then I Should Have Change View Of Products And Still See Them
  AND I Can Change Product View List Again


Validate Click On A Product To View More Detail About It 
  When I Am In Product View Page
  Given I should be able to scroll up and down 
  Then I should Click On Product Picture To Get More Information About It
  AND I Can Go Back To See The Other Products


Validate Happy Flow Adding Lots Of Products To Cart
  When I Am In Product View Page
  GIVEN I Can Add A Product To Cart 
  Then I Can Add Two More Product To My Cart With Different Search Options
  And I Can Verify That It's Three Product In The Cart


### TODO ### IMPLEMENT TEST NOT HAPPY FLOW GO BACK AND FORWARD ADD PRODUCTS TO BASKET 

