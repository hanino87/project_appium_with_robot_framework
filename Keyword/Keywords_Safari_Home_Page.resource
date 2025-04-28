
*** Settings ***
Documentation     This is a resource file, that contains keywords for homepage for Safari app 

Library      AppiumLibrary
Library    ../.venv/lib/python3.11/site-packages/robot/libraries/XML.py

Resource     ../Pages_Objects_Model/Home_Page.resource
Resource    ../Pages_Objects_Model/Safari_App.resource


*** Keywords ***

I Should Be Able To Search For Word Hammarby 
  Wait Until Element Is Visible    ${SAFARI_SEARCH_FIELD} 
  Tap With Number Of Taps    ${SAFARI_SEARCH_FIELD}    1    1
  Input Text    ${SAFARI_SEARCH_FIELD}    Hammarby 
  Capture Page Screenshot 

I Should Be Able To Lock My iPhone And When I Unlock The Search Result Is Visible 
  Lock  100s 
  Wait Until Element Is Visible  ${HAMMARBY_SEARCH_RESULT}
  Page Should Contain Element    ${HAMMARBY_SEARCH_RESULT}
  ${AIK_Text_Not_Found_On_Page}=    Run Keyword And Return Status    Page Should not Contain Text    Aik
  Run Keyword If    '${AIK_Text_Not_Found_On_Page}' == 'True'    Log    I have still my Hammarby search result after I locked my iPhone
  Capture Page Screenshot

I Can Clear The Search And Terminate The App
  Click Element    ${CLEAR_SEARCH_BUTTON}
  Capture Page Screenshot
  Terminate Application    ${SAFARI_BUNDLE_ID}        

  
  
