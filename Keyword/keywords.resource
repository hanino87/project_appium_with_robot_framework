
*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.

*** Keywords ***
Print string to console 
    [Arguments]  ${hannes_string} 
    Log to Console     ${hannes_string}
    