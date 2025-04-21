*** Settings ***

Documentation  This is a resource file, that contains variables and  for Swaglabs app
...            on my iphone for their productlist page 

*** Variables ***

${APP_BUNDLE_ID}     com.saucelabs.SwagLabsMobileApp

${SWAG_LABS_HOMEPAGE}     //XCUIElementTypeStaticText[@name="PRODUCTS"]

${SWAG_LABS_CART_ICON_EMPTY_BASKET}   //XCUIElementTypeOther[@name="test-Cart"]/XCUIElementTypeOther  # WORKS iF YOU HAVE NO PRODUCTS IN THE CART 

${SWAG_LABS_CART_ICON_WITH_ONE_PRODUCT}      name=1  # WORKS IF YOU HAVE ONE BASKET TO WORK WITH OTHER NUMBER OF ITEMS CHANGE VALUE IN [@name="1"]

${SWAG_LABS_CART_ICON_WITH_TWO_PRODUCTS}      name=2  

${SWAG_LABS_CART_ICON_WITH_THREE_PRODUCTS}      name=3 

${ADD_TO_CART_BUTTON1}   //XCUIElementTypeOther[@name="test-ADD TO CART"][1]  # 

${ADD_TO_CART_BUTTON2}   test-ADD TO CART  

# ${ADD_TO_CART_BUTTON3}   //XCUIElementTypeOther[@name="test-ADD TO CART"][3]  # 

${REMOVE_FROM_CART_BUTTON2}   (//XCUIElementTypeOther[@name="test-REMOVE"])[1]  # 

${PRODUCT1_IMAGE}       assets/src/img/sauce-backpack.jpg

${PRODUCT2_IMAGE}      assets/src/img/red-tatt.jpg

${PRODUCT3_IMAGE}      assets/src/img/sauce-pullover.jpg


${PRODUCT1_TITLE}  Sauce Labs Backpack

${PRODUCT2_TITLE}  Test.allTheThings() T-Shirt (Red)

${PRODUCT3_TITLE}  Sauce Labs Fleece Jacket


${PRODUCT1_DESCRIPTION}   carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.

${PRODUCT2_DESCRIPTION}  This classic Sauce Labs t-shirt is perfect to wear when cozying up to your keyboard to automate a few tests. Super-soft and comfy ringspun combed cotton.

${PRODUCT3_DESCRIPTION}   It's not every day that you come across a midweight quarter-zip fleece jacket capable of handling everything from a relaxing day outdoors to a busy day at the office.

# ${PRODUCT1_PRICE}

# ${PRODUCT2_PRICE}

# ${PRODUCT3_PRICE}

${SWAG_LABS_SCROOL_ELEMENT}        SwagLabsMobileApp
    
${SWAG_LABS_LOGOUT_ICON}  //XCUIElementTypeOther[@name="Username Password LOGIN The currently accepted usernames for this application are (tap to autofill): standard_user locked_out_user problem_user And the password for all users is: secret_sauce Horizontal scroll bar, 1 page Vertical scroll bar, 2 pages"]

${SWAG_LABS_LOGOUT_BUTTON}      test-LOGOUT

${SWAG_LABS_SCROOL_PRODUCT1_DETAIL}   //XCUIElementTypeOther[@name="test-Inventory item page" and @label="󰪽 Sauce Labs Backpack carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection. $29.99 ADD TO CART"]

${BUTTON_BACK_TO_OTHER_PRODUCTS}   test-BACK TO PRODUCTS

${PRODUCT_CHANGE_VIEW_OF_PRODUCTS}  test-Toggle

${TWITTER_ICON}    //XCUIElementTypeStaticText[@name=""]

${COPYRIGHT_TEXT}   © 2025 Sauce Labs. All Rights Reserved.

${PRODUCT_SELECTOR_BUTTON}   //XCUIElementTypeOther[@name="test-Modal Selector Button"]/XCUIElementTypeOther/XCUIElementTypeOther

${DROPLIST_OPTION_SORT_Z_TO_A}  Name (Z to A)

${DROPLIST_OPTION_SORT_PRICE_LOW_TO_HIGH}   Price (low to high)