
*** Settings ***

Documentation    This is a testsuite for typical mobile functions 
... 

Library  AppiumLibrary
Library  String
Resource  ../../Pages_Objects_Model/Home_Page.resource
Resource  ../../Pages_Objects_Model/Picture_App.resource
Resource  ../../Keyword/Keywords_Home_Page.resource
Resource  ../../Keyword/Keywords_Picture_App.resource
Resource  ../../Keyword/Keywords_Safari_Home_Page.resource

*** Test Cases ***
   
# Validate Swipe On Iphone 
#   When I Am On A Page On My Iphone
#   Given I Start To Swipe With My Fingers 
#   Then I Should Be Able To Swipe Around Some Pages

# Validate Scrool And Tap On Iphone
#   When I Am On A Page On My Iphone
#   Given I Start To Tap With My Fingers
#   Then I Should Tap And Open Picture App And Scrooling In It
#   And I Can Open With Tap Map Shortcut And Go Out With Tap And Close App

# Validate Flick On Iphone 
#   When I Am On A Page On My Iphone
#   Given I Start To Flick With My Fingers 
#   Then I Can Flip The Screen Horizontal Back And Forward
#   AND I Can Flip The Screen Up And Down Two Times
  
Flick Screen Up And Down
  Flick    100    100   100   400
  I Open Upp Safari App And Do Search
  I Should Be Able To Search for Hammarby 
  I Lock My Iphone And my Search Result Is Still There
  I Clear The Search And Terminate The App

 

### TODO ### 

## Validate Flick and Lock On Iphone 


###  1 IMPLEMENT TEST LOCK IPHONE AND THEN BE ABLE TO CONTINUE WITH WAS I WAS DOING ### 

 
###  2 IMPLEMNT HOW ZOOM CAN WORK IN PHONE TEST ON MAPP WRITE THE SCRIPT TO SHOW HOW IT SHOULD WORK 


