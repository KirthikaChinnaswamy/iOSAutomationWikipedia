# WikipediaiOSAutomation

**UITest Automation Framework Structure** 

	Wikipedia iOS Test Automation framework is created with Fluent Page Objects Model to significantly improve the readability of tests. The folder structure is very simple and easy to understand. Maintained separate folder for each actions like Test Data maintenance, Page elements, Reusbale components, Accessibility ID's, etc. Added assertions wherever possible. Please read below for detailed framework structure - 


**Screens**  -  Contains elements and functions respective for each screens in the application
   - HomeScreen.swift 
   - ResultScreen.Swift
   - HistoryScreen.swift

**Utilities** -  Contains resusable functions under Common Utilities
   - Tap
   - check
   - typetext

**BaseTest** - Created to deal with app actions like launch, terminate

**TestData** - Test Data are maintained here so that there is no hardcoded value used in the framework

**AccessibilityIdentifiers** -  Contains Accessibility ID values maintained for each screen of the application using enums

**UITests** -   Contains Test Script flow following Fluent Page Objects Model 

**Initializers** - App bundle Id's are declared and initialized here

****

**Building and Running**

To setup Wikipedia project in XCode, kindly refer -> https://github.com/wikimedia/wikipedia-ios#readme

Run testWikiTest under UITestAssignment.swift for UI Test case which is created for the evaluation

**Test Flow**

- Launch the Wikipedia app
- Verify Home Screen
- Perform a search
- Verify the Wiki page with Title, Headings
- Expand and collapse a heading
- Verify a link that heads to Safari App
- Navigate back to Wiki app
- Go back to Home Screen
- Goto History
- Verify the search is recorded
- Tap on the entry and verify the Wiki page
- Go back to Home Screen
