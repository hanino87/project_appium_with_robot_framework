*** Settings ***

Documentation  This is a resource file, that contains variables and  for Swaglabs app
...            on my iphone for their productlist page 


*** Variables ***

${APP_BUNDLE_ID}     com.saucelabs.SwagLabsMobileApp

${SWAG_LABS_HOMEPAGE}     //XCUIElementTypeStaticText[@name="PRODUCTS"]

${SWAG_LABS_CART_ICON}   //XCUIElementTypeOther[@name="test-Cart"]/XCUIElementTypeOther

${ADD_TO_CART_BUTTON1}   (//XCUIElementTypeOther[@name="test-ADD TO CART"])[1]  # WORKS IF YOU HAVE NO PRODUCTS IN THE CART 

${REMOVE_FROM_CART_BUTTON2}   (//XCUIElementTypeOther[@name="test-REMOVE"])[1]  # WORKS IF YOU HAVE 1 Products IN THE CART

${PRODUCT_1_IMAGE}       assets/src/img/sauce-pullover.jpg