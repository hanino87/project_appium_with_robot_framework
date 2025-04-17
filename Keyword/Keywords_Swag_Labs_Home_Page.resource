*** Settings ***
Library    AppiumLibrary
Library    String
Library    ../LoadEnv.py  # Ensure this path is correct
Resource   ../Pages_Objects_Model/Swag_Labs_App_Home_Page.resource
Resource   ../Pages_Objects_Model/Swag_Labs_Product_Page.resource
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

I Am On SwagLabs Loginpage
   Log To Console    I'm starting to try to login on SwagLabs app

Im Try To Login On The App With First Username "${SWAG_LABS_USERNAME_1}" And Password "${BAD_PASSWORD}"
   Click Element   ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
   Wait Until Element Is Visible     ${TEXT_FIELD_USERNAME}   10 
   Click Element   ${TEXT_FIELD_USERNAME}
   Input Text    ${TEXT_FIELD_USERNAME}   ${SWAG_LABS_USERNAME_1}
   Click Element   ${TEXT_FIELD_PASSWORD}
   Input Text    ${TEXT_FIELD_PASSWORD}   ${BAD_PASSWORD}
   Click Element  ${LOGIN_BUTTON}
   Log To Console    I login with correct username but wrong password

Im Try To Login On The App With Second Username "${SWAG_LABS_USERNAME_2}" And Password "${SWAG_LABS_PASSWORD}"
   Click Element   ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
   Wait Until Element Is Visible     ${TEXT_FIELD_USERNAME}   10 
   Click Element   ${TEXT_FIELD_USERNAME}
   Input Text    ${TEXT_FIELD_USERNAME}   ${SWAG_LABS_USERNAME_2}
   Click Element   ${TEXT_FIELD_PASSWORD}
   Input Text    ${TEXT_FIELD_PASSWORD}   ${SWAG_LABS_PASSWORD}
   Click Element  ${LOGIN_BUTTON}
   Log To Console    I login with correct username and password

Im Try To Login On The App With Third Username "${SWAG_LABS_USERNAME_1}" And Password "${SWAG_LABS_PASSWORD}"
   Click Element   ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
   Wait Until Element Is Visible     ${TEXT_FIELD_USERNAME}   10 
   Click Element   ${TEXT_FIELD_USERNAME}
   Input Text    ${TEXT_FIELD_USERNAME}   ${SWAG_LABS_USERNAME_1}
   Click Element   ${TEXT_FIELD_PASSWORD}
   Input Text    ${TEXT_FIELD_PASSWORD}   ${SWAG_LABS_PASSWORD}
   Click Element  ${LOGIN_BUTTON}
   Log To Console    I login with correct username and password

Im Try To Login On The App With Fourth Username "${BAD_USERNAME}" And Password "${SWAG_LABS_PASSWORD}"
   Click Element   ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
   Wait Until Element Is Visible     ${TEXT_FIELD_USERNAME}   10 
   Click Element   ${TEXT_FIELD_USERNAME}
   Input Text    ${TEXT_FIELD_USERNAME}   ${BAD_USERNAME}
   Click Element   ${TEXT_FIELD_PASSWORD}
   Input Text    ${TEXT_FIELD_PASSWORD}   ${SWAG_LABS_PASSWORD}
   Click Element  ${LOGIN_BUTTON}
   Log To Console    I login with correct password but wrong username 


Im Try To Login On The App With Password "${SWAG_LABS_PASSWORD}" And No Username 
   Click Element   ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
   Wait Until Element Is Visible     ${TEXT_FIELD_USERNAME}   10 
   Click Element   ${TEXT_FIELD_PASSWORD}
   Input Text    ${TEXT_FIELD_PASSWORD}   ${SWAG_LABS_PASSWORD}
   Click Element  ${LOGIN_BUTTON}
   Log To Console    I login with correct password but no username 

Im Try To Login On The App With Fifth Username "${BAD_USERNAME}" And No Password
   Click Element   ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
   Wait Until Element Is Visible     ${TEXT_FIELD_USERNAME}   10 
   Click Element   ${TEXT_FIELD_USERNAME}
   Input Text    ${TEXT_FIELD_USERNAME}   ${BAD_USERNAME}
   Click Element  ${LOGIN_BUTTON}
   Log To Console    I login with correct username but no password 


I Should See Error Messages That Im Locked Out From System 
   Element Should Be Visible  ${ERROR_MESSAGES_USER_LOCKED_OUT}

I Should See Error Messages That Password Does Not Match My Username
   Element Should Be Visible  ${ERROR_MESSAGES_NOT_RIGHT_PASSWORD_OR_USERNAME}
   Element Text Should Be     ${ERROR_MESSAGES_NOT_RIGHT_PASSWORD_OR_USERNAME}   Username and password do not match any user in this service.  

I Should See Error Messages That Username Does Not Match My Passowed 
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

I Try To Scrool on Loginpage
  Click Element   ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
  Wait Until Element Is Visible    ${Scroll_Loginpage}
  Click Element  ${Scroll_Loginpage}
  Scroll Down    ${Scroll_Loginpage}
  Wait Until Element Is Visible    ${Text_About_Password} 

I Should Not See Any Password Details 
  Page Should Not Contain Text    secret_sauce 
 








 

