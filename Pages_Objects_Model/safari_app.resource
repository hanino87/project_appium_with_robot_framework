*** Settings ***
Documentation     This is a resource file, that contains variables and  for Safari app
...               on my iphone 
...  

Library   AppiumLibrary

*** Comments ***

This is Variaables for safari homepage app  


*** Variables ***

${ELEMENT_XPATH_SAFARI_APP_ICON}    //XCUIElementTypeIcon[@name="Safari"]
${ELEMENT_XPATH2}   //XCUIElementTypeOther[@name="CapsuleNavigationBar?isSelected=true&isDistractionControlOverlayUp=false"]
${ELEMENT_XPATH3}   //XCUIElementTypeApplication[@name="Safari"]/XCUIElementTypeWindow[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]
${ELEMENT_XPATH4}   //XCUIElementTypeButton[@name="CancelBarItemButton"]


*** Comments ***

This is keywords for safari homepage app 

*** Keywords ***
I am on the login page and Click On Safari App Icon
    Log To Console    I am on the login page

# I on Hammarby Fotboll In Search Field 

# I Should see search result of Hammarby Fotboll 

# I Should be able to scrolling around the search results 


# Put In Text Search Field Regret and do serach again 
#   Element Should Be Visible    ${ELEMENT_XPATH2}  
#   Click Element    ${ELEMENT_XPATH2}  
#   Input Text    ${ELEMENT_XPATH3}     Hammarby 
#   Click Element  ${Button_Idname} 
#   Click Element   ${ELEMENT_XPATH2}
#   Input Text    ${ELEMENT_XPATH3}     Hammarby 2
#   Lock          10



   # When I login with username "invalid" and password "invalid"
   # Then I should see the error message
   # And I should be able to login again

