
*** Settings ***
Documentation     This is a resource file, that contains variables for homepage for Safari app 

Library      AppiumLibrary
Resource     ../Pages_Objects_Model/Home_Page.resource
Resource    ../Pages_Objects_Model/Safari_App.resource


*** Comments ***

Below is keyword metods to handle installation of Iphone and Swag Labs app 

*** Keywords ***

I Should Be Able To Search for Hammarby 
  Wait Until Element Is Visible    ${SAFARI_SEARCH_FIELD} 
  Tap With Number Of Taps    ${SAFARI_SEARCH_FIELD}    1    1
  Input Text    ${SAFARI_SEARCH_FIELD}    Hammarby 

I Lock My Iphone And my Search Result Is Still There
  Lock  100s 
  Wait Until Element Is Visible  ${HAMMARBY_SEARCH_RESULT}
  Page Should Contain Element    ${HAMMARBY_SEARCH_RESULT}
  Page Should Not Contain Text    Aik 
  Log  I have still my Hammarby search result after i loocked my iphone
  Capture Page Screenshot

I Clear The Search And Terminate The App
  Click Element    ${CLEAR_SEARCH_BUTTON}
  Terminate Application    ${SAFARI_BUNDLE_ID}        

  


 

  
### SPlit THIS SImulate that this is how you do drag and drop but i dont work on simulator 

# Drag And Drop Using Elements Without Show It On The Simulator Device 
#     # Wait for the elements to be visible
#     Wait Until Element Is Visible  ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
#     Wait Until Element Is Visible  ${ELEMENT_XPATH_SAFARI_APP_ICON}

#     # Capture the initial position of the SwagLabs App Icon (before the drag)
#     ${initial_position}=  AppiumLibrary.Get Element Location  ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
#     Log  Initial Position: ${initial_position}

#    ${initial_position}=  AppiumLibrary.Get Element Location   ${ELEMENT_XPATH_FITNESS_APP_ICON}  
#     Log  Initial Position: ${initial_position}

#     # Perform scroll down to ensure the element is visible if it's off-screen
#     Scroll Down  ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}

#     # Perform drag and drop by element locator (from source to target)
#     AppiumLibrary.Drag And Drop  ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}   ${ELEMENT_XPATH_FITNESS_APP_ICON}      

#     # Capture the final position of the SwagLabs App Icon (after the drag)
#     ${final_position}=  AppiumLibrary.Get Element Location  ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
#     Log  Final Position: ${final_position}

#     # Optionally, compare the initial and final positions to ensure it was moved
#     Run Keyword If  ${initial_position['x']} != ${final_position['x']}  Log  The element has moved in the X direction.
#     Run Keyword If  ${initial_position['y']} != ${final_position['y']}  Log  The element has moved in the Y direction.
#     Run Keyword If  ${initial_position['x']} == ${final_position['x']}  Log  The element has not moved in the X direction.
#     Run Keyword If  ${initial_position['y']} == ${final_position['y']}  Log  The element has not moved in the Y direction.
