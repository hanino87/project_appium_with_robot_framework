*** Settings ***
Library    AppiumLibrary
Library    String
Library    ../LoadEnv.py  # Ensure this path is correct
Resource   ../Pages_Objects_Model/Swag_Labs_app_homepage.resource
Resource   ../Pages_Objects_Model/Swag_Labs_app_productpage.resource
Resource   ../Pages_Objects_Model/homepage.resource

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

I Am On SwagLabs Homepage
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

I Should See Error Messages That Im Locked Out From System 
   Element Should Be Visible  ${ERROR_MESSAGES_USER_LOCKED_OUT}

I Should See Error Messages That Password Does Not Match My Username
   Element Should Be Visible  ${ERROR_MESSAGES_NOT_RIGHT_PASSWORD_OR_USERNAME}

I Will not See Lists Of Products
   Page Should Not Contain Element   ${SWAG_LABS_HOMEPAGE}
   Terminate Application    ${SWAG_APP_BUNDLE_ID}

I Should See List Of Available Products
   Wait Until Element Is Visible    ${SWAG_LABS_HOMEPAGE}  10 
   Page Should Contain Element   ${SWAG_LABS_HOMEPAGE}
   Terminate Application    ${SWAG_APP_BUNDLE_ID}







 

