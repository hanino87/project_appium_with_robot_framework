*** Settings ***

Documentation  This is a resource file, that contains variables for Swaglabs apps homepage
...            on my iphone 


*** Variables ***

${APP_BUNDLE_ID}     com.saucelabs.SwagLabsMobileApp

${TEXT_FIELD_USERNAME}   test-Username

${TEXT_FIELD_PASSWORD}   test-Password

${ERROR_MESSAGES_NO_PASSWORD}   Password is required

${ERROR_MESSAGES_NO_USERNAME}   Username is required

${ERROR_MESSAGES_USER_LOCKED_OUT}   Sorry, this user has been locked out.

${ERROR_MESSAGES_NOT_RIGHT_PASSWORD_OR_USERNAME}  Username and password do not match any user in this service.

${LOGIN_BUTTON}   test-LOGIN

${ELEMENT_XPATH_MESSAGE_ABOUT_LOGIN}  //XCUIElementTypeOther[@name="The currently accepted usernames for this application are (tap to autofill): standard_user locked_out_user problem_user And the password for all users is: secret_sauce"]

${BAD_PASSWORD}  Badpassword

${BAD_USERNAME}  Badusername
       
${Scroll_Loginpage}  assets/src/img/login-bot.png

${Text_About_Password}   And the password for all users is: secret_sauce