*** Settings ***

Documentation     This is a resource file, that contains keywords for homepage for Swaglabs app 

Library    AppiumLibrary
Library    String
Library    ../LoadEnv.py  # Ensure this path is correct

Resource   ../Pages_Objects_Model/Swaglabs_App_Home_Page.resource
Resource   ../Pages_Objects_Model/Swaglabs_Product_Page.resource
Resource   ../Pages_Objects_Model/Home_Page.resource

*** Keywords ***

Set Env Vars For Username 1 In Swaglabs
    ${SWAG_LABS_USERNAME_1}=    Get Env Variable    SWAG_LABS_USERNAME_1
    Set Suite Variable    ${SWAG_LABS_USERNAME_1}

Set Env Vars For Username 2 In Swaglabs
    ${SWAG_LABS_USERNAME_2}=    Get Env Variable    SWAG_LABS_USERNAME_2
    Set Suite Variable    ${SWAG_LABS_USERNAME_2}

Set Env Vars For Username 3 In Swaglabs
    ${SWAG_LABS_USERNAME_3}=    Get Env Variable    SWAG_LABS_USERNAME_3
    Set Suite Variable    ${SWAG_LABS_USERNAME_3}

Set Env Vars For Username 4 In Swaglabs
    ${SWAG_LABS_USERNAME_4}=    Get Env Variable    SWAG_LABS_USERNAME_4
    Set Suite Variable    ${SWAG_LABS_USERNAME_4}

Set Env Vars For Password In Swaglabs
    ${SWAG_LABS_PASSWORD}=    Get Env Variable    SWAG_LABS_PASSWORD
    Set Suite Variable    ${SWAG_LABS_PASSWORD}

I Am On SwagLabs Login Page
   Log To Console    I'm starting to try to login on SwagLabs app
Im Try To Login On The App With Correct Username "${SWAG_LABS_USERNAME_1}" And Password "${SWAG_LABS_PASSWORD}"
   Click Element   ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
   Wait Until Element Is Visible     ${TEXT_FIELD_USERNAME}   10 
   Click Element   ${TEXT_FIELD_USERNAME}
   Input Text    ${TEXT_FIELD_USERNAME}   ${SWAG_LABS_USERNAME_1}
   Click Element   ${TEXT_FIELD_PASSWORD}
   Input Text    ${TEXT_FIELD_PASSWORD}   ${SWAG_LABS_PASSWORD}
   Click Element  ${LOGIN_BUTTON}
   Log To Console    I login with correct username and password

Im Try To Login On The App With Locked Out User "${SWAG_LABS_USERNAME_2}" And Password "${SWAG_LABS_PASSWORD}"
   Click Element   ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
   Wait Until Element Is Visible     ${TEXT_FIELD_USERNAME}   10 
   Click Element   ${TEXT_FIELD_USERNAME}
   Input Text    ${TEXT_FIELD_USERNAME}   ${SWAG_LABS_USERNAME_2}
   Click Element   ${TEXT_FIELD_PASSWORD}
   Input Password   ${TEXT_FIELD_PASSWORD}   ${SWAG_LABS_PASSWORD}  
   Click Element  ${LOGIN_BUTTON}
   Log To Console    I tried to login with correct username and password for lockedout user

Im Try To Login On The App With Problem User "${SWAG_LABS_USERNAME_3}" And Password "${SWAG_LABS_PASSWORD}"
   Click Element   ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
   Wait Until Element Is Visible     ${TEXT_FIELD_USERNAME}   10 
   Click Element   ${TEXT_FIELD_USERNAME}
   Input Text    ${TEXT_FIELD_USERNAME}   ${SWAG_LABS_USERNAME_3}
   Click Element   ${TEXT_FIELD_PASSWORD}
   Input Password   ${TEXT_FIELD_PASSWORD}   ${SWAG_LABS_PASSWORD}  
   Click Element  ${LOGIN_BUTTON}
   Log To Console    I tried to login with a problem user 



Im Try To Login On The App With Wrong Username "${BAD_USERNAME}" And Right Password "${SWAG_LABS_PASSWORD}"
   Click Element   ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
   Wait Until Element Is Visible     ${TEXT_FIELD_USERNAME}   10 
   Click Element   ${TEXT_FIELD_USERNAME}
   Input Text    ${TEXT_FIELD_USERNAME}   ${BAD_USERNAME}
   Click Element   ${TEXT_FIELD_PASSWORD}
   Input Password   ${TEXT_FIELD_PASSWORD}   ${SWAG_LABS_PASSWORD}
   Click Element  ${LOGIN_BUTTON}
   Log To Console    I login with correct password but wrong username 

Im Try To Login On The App With Right Username "${SWAG_LABS_USERNAME_1}" And Wrong Password "${BAD_PASSWORD}"
   Click Element   ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
   Wait Until Element Is Visible     ${TEXT_FIELD_USERNAME}   10 
   Click Element   ${TEXT_FIELD_USERNAME}
   Input Text    ${TEXT_FIELD_USERNAME}   ${SWAG_LABS_USERNAME_1}
   Click Element   ${TEXT_FIELD_PASSWORD}
   Input Password   ${TEXT_FIELD_PASSWORD}  ${BAD_PASSWORD} 
   Click Element  ${LOGIN_BUTTON}
   Log To Console    I login with correct password but wrong username 


Im Try To Login On The App With Right Password "${SWAG_LABS_PASSWORD}" And No Username 
   Click Element   ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
   Wait Until Element Is Visible    ${TEXT_FIELD_PASSWORD}
   Click Element   ${TEXT_FIELD_PASSWORD}
   Input Password    ${TEXT_FIELD_PASSWORD}   ${SWAG_LABS_PASSWORD}
   Click Element  ${LOGIN_BUTTON}
   Log To Console    I login with correct password but no username 
   Capture Page Screenshot

Im Try To Login On The App With Right Username "${SWAG_LABS_USERNAME_1}" And No Password
   Click Element   ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
   Wait Until Element Is Visible     ${TEXT_FIELD_USERNAME}   10 
   Click Element   ${TEXT_FIELD_USERNAME}
   Input Text    ${TEXT_FIELD_USERNAME}   ${SWAG_LABS_USERNAME_1}
   Click Element  ${LOGIN_BUTTON}
   Log To Console    I login with correct username but no password 
   Capture Page Screenshot


I Should See Error Messages That Im Locked Out From System 
   Element Should Be Visible  ${ERROR_MESSAGES_USER_LOCKED_OUT}
   Page Should Not Contain Element    ${ERROR_MESSAGES_NOT_RIGHT_PASSWORD_OR_USERNAME}

I Should See Error Messages That Password Does Not Match My Username
   Element Should Be Visible  ${ERROR_MESSAGES_NOT_RIGHT_PASSWORD_OR_USERNAME}
   Element Text Should Be     ${ERROR_MESSAGES_NOT_RIGHT_PASSWORD_OR_USERNAME}   Username and password do not match any user in this service.  

I Should See Error Messages That Username Does Not Match My Password 
   Element Should Be Visible  ${ERROR_MESSAGES_NOT_RIGHT_PASSWORD_OR_USERNAME}
   Element Text Should Be     ${ERROR_MESSAGES_NOT_RIGHT_PASSWORD_OR_USERNAME}   Username and password do not match any user in this service.

I Should See Error Message That I Miss A Password 
   Element Should Be Visible  ${ERROR_MESSAGES_NO_PASSWORD}
   Page Should Not Contain Element    ${ERROR_MESSAGES_NOT_RIGHT_PASSWORD_OR_USERNAME}
   Page Should Not Contain Element    ${ERROR_MESSAGES_NO_USERNAME} 

I Should See Error Message That I Miss A Username 
   Element Should Be Visible  ${ERROR_MESSAGES_NO_USERNAME}
   Page Should Not Contain Element    ${ERROR_MESSAGES_NOT_RIGHT_PASSWORD_OR_USERNAME} 
   Page Should Not Contain Element    ${ERROR_MESSAGES_NO_PASSWORD} 


I Will not See Lists Of Products
   Page Should not Contain Element    ${SWAG_LABS_HOMEPAGE}
   Terminate Application    ${SWAG_APP_BUNDLE_ID}

I Will not See Lists Of Products But I Continue With My Test 
   Run Keyword And Continue On Failure    Page Should Not Contain Element    ${SWAG_LABS_HOMEPAGE}
   Run Keyword And Continue On Failure    Log    We continue with this test anyway
   Terminate Application    ${SWAG_APP_BUNDLE_ID}


I Should See List Of Available Products
   Wait Until Element Is Visible    ${SWAG_LABS_HOMEPAGE}  10s
   Page Should Contain Element   ${SWAG_LABS_HOMEPAGE}
   Sleep    10s 

I Try To Scrool on Login page
  Click Element   ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
  Wait Until Element Is Visible    ${SCROOL_LOGIN_PAGE}
  Click Element  ${SCROOL_LOGIN_PAGE}
  Scroll Down    ${SCROOL_LOGIN_PAGE}
  Wait Until Element Is Visible    ${Text_About_Password} 
  

I Should Not See Any Password Details 
  ${PASSWORD_SHOULD_BE_INVISIBLE_ON_PAGE}=    Run Keyword And Return Status   Page Should not Contain Element    ${SWAG_LABS_PASSWORD}
  Run Keyword If    '${PASSWORD_SHOULD_BE_INVISIBLE_ON_PAGE}' == 'False'    Log    No its visible i tell security right now!
  Capture Page Screenshot

  
Im Try To Login On The App With Username "${SWAG_LABS_USERNAME_1}" 
   Click Element   ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
   Wait Until Element Is Visible     ${TEXT_FIELD_USERNAME}   
   Click Element   ${TEXT_FIELD_USERNAME}
   Input Password  ${TEXT_FIELD_USERNAME}   ${SWAG_LABS_USERNAME_1}

I Can Verify That The Password Is Masked When I Write It 
   Click Element   ${TEXT_FIELD_PASSWORD}
   Input Text    ${TEXT_FIELD_PASSWORD}     ${SWAG_LABS_PASSWORD}
   Element Value Should Be    ${TEXT_FIELD_PASSWORD}   ${PASSWORD_TEXT_MASKED}  
   Run Keyword And Return Status   Element Should Be Visible    ${PASSWORD_TEXT_MASKED} 
   Run Keyword If    '${PASSWORD_TEXT_MASKED}' == 'True'    Log    Yes the password is masked for the user i take a screenshot to verify it works  
   Capture Page Screenshot

I Terminate Swaglabs App
  Terminate Application     ${SWAG_APP_BUNDLE_ID}






 

