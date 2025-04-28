
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
   
Validate Swipe On iPhone 
  When I Am On A Page On My iPhone
  Given I Start To Swipe With My Fingers 
  Then I Should Be Able To Swipe Ar# ound Some Pages

Validate Scrool And Tap On iPhone
  When I Am On A Page On My iPhone
  Given I Start To Tap With My Fingers
  Then I Should Tap And Open Picture App And Scrooling In It
  And I Can Open With Tap Map Shortcut And Go Out With Tap And Close App

Validate Flick On iPhone 
  When I Am On A Page On My iPhone
  Given I Start To Flick With My Fingers 
  Then I Can Flick The Screen Horizontal Back And Forward
  AND I Can Flick The Screen Up And Down Two Times
  
Validate That I Can Flick And Lock My iPhone 
  When I Open Up Safari With Flick And Can Do Search
  Given I Should Be Able To Search For Word Hammarby
  THEN I Should Be Able To Lock My Iphone And When I Unlock The Search Result Is Visible 
  AND I Can Clear The Search And Terminate The App
 
Validate I Can Uninstall Swaglabs App On iPhone 
  When I Am On A Page On My iPhone
  Given I Uninstall My App On My iPhone
  Then I Can Verify That My App Is No Longer on My Iphone Device 
  And I Take A Screenshot To Show That My App Is Not On Iphone

# BELOW IS TEST THAT DON`T WORK TO SHOW ON MY SIMULATOR DEVICE BUT I GIVE YOU THE CODE TO SE HOW IT SHOULD BE WRITTEN

Validate Zoom On Iphone  
  When I Am On A Page On My iPhone
  GIVEN I Can Tap On Map Widget Icon On My Screen 
  THEN I Can Handle All Popup Windows
  AND I Can Zoom In City Umeå On The Map

Validate That I Can Change Iphone To Different Positions 
  When I Am On A Page On My iPhone
  Given I Start To Shake My iPhone
  Then I Can Be Able To Shake My iPhone
  AND I Can Change My iPhone To Portrait Position

Validate Drag And Drop Function 
  When I Am On A Page On My iPhone
  Given I Start To Drag And Drop One App 
  Then I Should Be Able to Drag And Drop Apps On Device
  And I Take A Screenshot To Show That My App Has Been Moved



  

  



