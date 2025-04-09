
*** Settings ***

Documentation     This is a file to explain BBD metod in Robot Frame work 
...               Metods focus on write acceptance criteria to get clearer validation of the testcases. 
...               The words Given When Then And helps user to write testcase with focus on test accpetance criteria. 




*** Test Cases ***
Login With Admin
    [Documentation]    This test case is to test login with BDD syntax
    Given I am on the login page
    When I login with username "admin" and password "admin"
    Then I should see the welcome page

Login With Invalid User
    [Documentation]    This test case is to test login with BDD syntax
    Given I am on the login page
    When I login with username "invalid" and password "invalid"
    Then I should see the error message
    And I should be able to login again

*** Keywords ***
I am on the login page
    Log To Console    I am on the login page

I login with username "${username}" and password "${password}"
    Log To Console    I login with username "${username}" and password "${password}"


I should see the welcome page
    Log To Console    I should see the welcome page
    IF   "${login_status}" == "True"
        Log To Console    Welcome page is displayed
    ELSE
        Log To Console    Welcome page is not displayed
        Fail    Welcome page is not displayed
    END

I should see the error message
    Log To Console    I should see the error message
    IF   "${login_status}" == "False"
        Log To Console    Error message is displayed
    ELSE
        Log To Console    Error message is not displayed
        Fail    Error message is not displayed
    END

I should be able to login again
    Log To Console    I should be able to login again
    Log To Console    The Login page is displayed