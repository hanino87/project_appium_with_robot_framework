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

Set Env Vars For Password In Swaglabs
    ${SWAG_LABS_PASSWORD}=    Get Env Variable    SWAG_LABS_PASSWORD
    Set Suite Variable    ${SWAG_LABS_PASSWORD}

I Am On SwagLabs Homepage
   Log To Console    I'm starting to try to login on SwagLabs app

Im Try To Login On The App With username "${SWAG_LABS_USERNAME_1}" and password "${BAD_PASSWORD}"
   Click Element   ${ELEMENT_XPATH_SWAG_LABS_APP_ICON}
   Click Element   ${TEXT_FIELD_USERNAME}
   Input Text    ${TEXT_FIELD_USERNAME}   ${SWAG_LABS_USERNAME_1}
   Click Element   ${TEXT_FIELD_PASSWORD}
   Input Text    ${TEXT_FIELD_PASSWORD}   ${BAD_PASSWORD}
   Click Element  ${LOGIN_BUTTON}
   Log To Console    I login with correct username and password

I Should See Error Messages That Password Does Not Match My Username
   Element Should Be Visible  ${ERROR_MESSAGES_NOT_RIGHT_PASSWORD_OR_USERNAME}

I Will not See Lists Of Products
   Page Should Not Contain Element   ${SWAG_LABS_HOMEPAGE}
   Terminate Application    ${SWAG_APP_BUNDLE_ID}

I See List Of Products
   Page Should Contain Element   ${SWAG_LABS_HOMEPAGE}
   Terminate Application    ${SWAG_APP_BUNDLE_ID}





 

