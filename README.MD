
### Welcome to my thesis project Robot Framework and Appium for mobile testing 

### Installation 

Prerequisites:

• 🐍 Python 3.7+
  
    Required for Robot Framework and AppiumLibrary

    Install from 🔗 https://www.python.org
    (Required for Robot Framework and AppiumLibrary)

• 🤖 Robot Framework 
  
    Install via pip:

    pip install robotframework

    ➡️ Robot Framework Documentation: 🔗 https://robotframework.org
  
• 🚀 Appium server installed and running 
    
    Required to automate mobile apps from a server. 

    Install using Node.js:

    npm install -g appium

    ➡️ Setup guide: 🔗 https://appium.io/docs/en/2.1/quickstart/install/

• 🧰 Xcode
    
    Includes tools and simulators required for be able to doing iOS testing.
  
    Install from: the Mac App Store.

• 🧪 Appium XCUITest Driver
    
    Tool that communicates with iOS apps using Apple’s XCUITest framework.

    ➡️ Setup guide: 🔗 https://www.npmjs.com/package/appium-xcuitest-driver

• 👁 Appium Inspector 
    
    GUI tool to explore app UI and locate elements 
    so you can start to write your test scripting.
  
    Download from: 🔗 https://github.com/appium/appium-inspector

• 🧩 WebDriverAgent 
  
    WebDriverAgent is the bridge between Appium and iOS devices. It allowing you to:
  
      • Install and close applications 

      • Tap,Scrool,Flick and other mobile functions 

      • Verify that your element is visible screen

    ➡️ Setup guide: 🔗 https://www.npmjs.com/package/appium-webdriveragent

### BBD Driven Testcases 

The plan is to create and write the testcase according to Robot Frameworks BBD(Behavior Driven Development). 

• 🧪 BDD (Behavior-Driven Development)

    It is based on the GIVEN-WHEN-THEN syntax, a structured format used to write clear user stories and acceptance criteria—crucial for effective testing.

    The structre is broken down in three parts: 
  
    • GIVEN: Describes the prerequisites for test cases

    • WHEN:  Specifies the action in your test

    • THEN: Defines the expected outcome of the test

    And the extra step in BBD:
    
    • And: An extra step to validate the test further 

• ✅ Test Case Example:
   
    *** Test Cases ***
   
    Validate Swipe On iPhone  (Test Case Name)

    GIVEN I Am On A Page On My iPhone
    WHEN I Start To Swipe With My Fingers 
    Then I Should Be Able To Swipe Around Some Pages  

    Click On A Prouct To View More Detail About It (Test Case Name)
   
    GIVEN I Am In Product View Page
    WHEN I scroll up and down 
    THEN I should Click On Product Picture To Get More Information About It
    AND I Can Go Back To See The Other Products
  
    For mer info follow link:

    🔗 https://docs.robotframework.org/docs/testcase_styles/bdd


### Test Scoope 

  •  iOS iPhone 16 simulator device 

  •  Native apps 

  •  Swaglabs test application 

    Demo of the application on web: 🔗 https://www.saucedemo.com/v1/

### Setup Device 






