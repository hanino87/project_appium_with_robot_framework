*** Settings ***
Documentation     
...               iPhone: requires ffmpeg installed on Mac where phones are conneted. Run: brew install ffmpeg
...              
Library  AppiumLibrary
Library  String
Resource  ../../Pages_Objects_Model/homepage.resource
Resource  ../../Keyword/keywords_Homepage.resource




# Remove Screen Recording If Pass
#     ${filename}                     Stop Screen Recording
#     Run Keyword If Test Passed      Remove File     ${filename}
#     Run Keyword If Test Passed      Log             Screen recording not saved because test execution passed.

# # Start Vidoe of My Test on The Screen 
# #   Start Screen Recording   
#   Sleep    180s
#   Stop Screen Recording  ${Screen_Recorded_File} 


