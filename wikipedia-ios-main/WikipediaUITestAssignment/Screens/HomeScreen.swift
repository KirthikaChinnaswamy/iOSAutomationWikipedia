//
//  HomeScreen.swift
//  wikipediaUITestsAssignment
//
//  Created by Kirthika Chinnaswamy on 08/20/21.
//

import Foundation
import XCTest

public class HomeScreen: CommonUtility {
    
    let appTitle = app.buttons[AccessibilityIdentifiers.Home.appTitle]
    let searchBox = app.searchFields.firstMatch
    let result = app.collectionViews.firstMatch.cells.firstMatch
    let suggestions = app.collectionViews.firstMatch.cells
    let history = app.buttons[AccessibilityIdentifiers.Home.history]
    
    
    func verifyHomePage() -> HomeScreen {
        checkForElement(appTitle, description: "App Title/checkforappTitle")
        return self
    }
    
    func gotoHistory() -> HistoryScreen {
        tapOn(history, action: .exists, description: "history in HomeScreen/tapOnHistory")
        return HistoryScreen()
    }
    
    func wikipediaSearch(searchTerm: String, suggestion: String, searchTitle: String) -> ResultScreen {
        tapOn(searchBox, action: .exists, description: "searchField in HomeScreen/tapOnwikipediaSearch")
        typeText(searchBox, textValue: TestData.Search.searchTerm, description: "searchField in HomeScreen/typeTextOnwikipediaSearch")
        tapOn(result,seconds: 5, action: .exists, description: "suggestion for SearchTerm/tapOnResult")
        
        return ResultScreen()
    }
}
