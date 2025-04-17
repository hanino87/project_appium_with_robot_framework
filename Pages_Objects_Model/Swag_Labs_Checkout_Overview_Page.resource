*** Settings ***

Documentation  This is a resource file, that contains variables and  for Swaglabs app
...            on my iphone for the checkout overview page 

*** Variables ***

${CANCEL_BUTTON}          test-CANCEL
${FINISH_BUTTON}          test-FINISH
${SHIPPING_TEXT_INFORMTION}   Shipping Information: FREE PONY EXPRESS DELIVERY!
${PAYMENT_TEXT_INFORMATION}  Payment Information: SauceCard #31337
${ITEM_TOTAL_PRICE_TEXT}   Item total: $29.99  ## HERE YOU HAVE TO CHANGE VALUE BUY YOURSELF DEPEDENT ON WHICH PRODUCT YOU CHANGE 
${ITEM_TOTAL_PRICE_INCLUDE_TAX}   Total: $32.39  ## HERE YOU HAVE TO CHANGE VALUE BUY YOURSELF DEPEDENT ON WHICH PRODUCT YOU CHANGE 
${PRODUCT_TITEL}   Sauce Labs Backpack  ## HERE YOU HAVE TO CHANGE TO RIGHT TITLE IF YOU CHOOSE ANNOTHER PRODUCT 
${PRODUCT_DESCRIPTION}  carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.  ## HERE YOU HAVE TO CHANGE IT IF YOU USE ANNOTHER PRODUCT 
${TEXTBOX_PRODUCT_INFORMATION}   test-Item  ## A TEXTBOX COLUMN THAT HAS BOTH TITEL AND DESCRIPTION FOR PRODUCT 
${SCROOL_ELEMENT}   (//XCUIElementTypeOther[@name="Vertical scroll bar, 3 pages"])[2]
${WRONG_PRODUCT_TITLE}   SWAGLABS IPHONE 16 
${WRONG_TOTAL_PRICE}    $50