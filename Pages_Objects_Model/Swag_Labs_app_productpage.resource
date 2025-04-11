*** Settings ***

Documentation  This is a resource file, that contains variables and  for Swaglabs app
...            on my iphone for their productlist page 


*** Variables ***

${APP_BUNDLE_ID}     com.saucelabs.SwagLabsMobileApp

${SWAG_LABS_HOMEPAGE}     Username Password LOGIN The currently accepted usernames for this application are (tap to autofill): standard_user locked_out_user problem_user And the password for all users is: secret_sauce Horizontal scroll bar, 1 page Vertical scroll bar, 2 pages

${SWAG_LABS_CART_ICON}   //XCUIElementTypeOther[@name="test-Cart"]/XCUIElementTypeOther

${ADD_TO_CART_BUTTON1}   (//XCUIElementTypeOther[@name="test-ADD TO CART"])[1]  # WORKS IF YOU HAVE NO PRODUCTS IN THE CART 

${REMOVE_FROM_CART_BUTTON2}   (//XCUIElementTypeOther[@name="test-REMOVE"])[1]  # WORKS IF YOU HAVE 1 Products IN THE CART

${PRODUCT_1_IMAGE}       assets/src/img/sauce-pullover.jpg