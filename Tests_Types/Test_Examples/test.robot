
*** Settings ***
Documentation     This is a simple test to print 
...               out a message in the console
Library  String
Resource  keywords.resource

*** Test Cases ***
Print My String To Console
    ${random_string}=   Generate Random String   100
    Log to Console     ${random_string}
Print Hannes String To Console 
    Print string to console  hej alla 
