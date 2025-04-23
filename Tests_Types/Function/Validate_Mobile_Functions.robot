
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
Resource  ../../Keyword/Keywords_Map_App.resource
Resource    ../../Keyword/Keywords_Home_Page.resource

*** Test Cases ***
   
Validate Swipe On Iphone 
  When I Am On A Page On My Iphone
  Given I Start To Swipe With My Fingers 
  Then I Should Be Able To Swipe Around Some Pages

Validate Scrool And Tap On Iphone
  When I Am On A Page On My Iphone
  Given I Start To Tap With My Fingers
  Then I Should Tap And Open Picture App And Scrooling In It
  And I Can Open With Tap Map Shortcut And Go Out With Tap And Close App

Validate Flick On Iphone 
  When I Am On A Page On My Iphone
  Given I Start To Flick With My Fingers 
  Then I Can Flick The Screen Horizontal Back And Forward
  AND I Can Flip The Screen Up And Down Two Times
  
Validate Flick Search And Lock My Phone 
  When I Open Upp Safari With Flick App Can Do Search
  Given I Should Be Able To Search for Hammarby 
  THEN I Should Be Able To Lock My Iphone And When I Unlock The Search Result Is Visible 
  AND I Can Clear The Search And Terminate The App

## BELOW IS TEST THAT DON`T WORK TO SHOW BEACUSE IS AN EMULATOR DEVICE BUT I GIVE YOU THE CODE TO SE HOW CODE SHOULD BE WRITTEN

Validate Zoom Works On Iphone  
  When I Am On A Page On My Iphone
  GIVEN I Can Tap On Map Widget Icon On My Screen 
  THEN I Can Handle All Popup Windows
  AND I Can Zoom In City Umeå On The Mapp

Validate Change Iphone To Different Positions 
  When I Am On A Page On My Iphone
  Given I Start To Shake My Iphone
  Then I Can Be Able To Shake My Iphone
  AND I Can Change My Iphone To Portrait Position
  

  



