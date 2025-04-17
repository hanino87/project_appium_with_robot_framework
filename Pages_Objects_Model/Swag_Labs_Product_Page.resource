*** Settings ***

Documentation  This is a resource file, that contains variables and  for Swaglabs app
...            on my iphone for their productlist page 

*** Variables ***

${APP_BUNDLE_ID}     com.saucelabs.SwagLabsMobileApp

${SWAG_LABS_HOMEPAGE}     //XCUIElementTypeStaticText[@name="PRODUCTS"]

${SWAG_LABS_CART_ICON_EMPTY_BASKET}   //XCUIElementTypeOther[@name="test-Cart"]/XCUIElementTypeOther  # WORKS iF YOU HAVE NO PRODUCTS IN THE CART 

${SWAG_LABS_CART_ICON_WITH_ONE_PRODUCT}      name=1
  # WORKS IF YOU HAVE ONE BASKET TO WORK WITH OTHER NUMBER OF ITEMS CHANGE VALUE IN [@name="1"]

${ADD_TO_CART_BUTTON1}   //XCUIElementTypeOther[@name="test-ADD TO CART"][1]  # WORKS IF YOU HAVE NO PRODUCTS IN THE CART 

${REMOVE_FROM_CART_BUTTON2}   (//XCUIElementTypeOther[@name="test-REMOVE"])[1]  # WORKS IF YOU HAVE 1 Products IN THE CART

${PRODUCT_1_IMAGE}       assets/src/img/sauce-backpack.jpg

${PRODUCT_2_IMAGE}      assets/src/img/red-tatt.jpg

${PRODUCT_1_DESCRIPTION}   carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.

${Swag_Labs_Scrool_Element}        SwagLabsMobileApp
    
${Swag_Labs_Logout_Icon}  //XCUIElementTypeOther[@name="Username Password LOGIN The currently accepted usernames for this application are (tap to autofill): standard_user locked_out_user problem_user And the password for all users is: secret_sauce Horizontal scroll bar, 1 page Vertical scroll bar, 2 pages"]

${Swag_Labs_Logout_button}      test-LOGOUT

${Swag_Labs_Scrool_Product_Detail}   //XCUIElementTypeOther[@name="test-Inventory item page" and @label="󰪽 Sauce Labs Backpack carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection. $29.99 ADD TO CART"]

${Button_Back_To_Other_Products}   test-BACK TO PRODUCTS

${PRODUCT_CHANGE_VIEW_OF_PRODUCTS}  test-Toggle
