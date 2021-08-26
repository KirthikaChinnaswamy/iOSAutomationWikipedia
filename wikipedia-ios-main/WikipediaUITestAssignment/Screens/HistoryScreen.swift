//
//  HistoryScreen.swift
//  wikipediaUITestsAssignment
//
//  Created by Kirthika Chinnaswamy on 08/20/21.
//

import Foundation

public class HistoryScreen: CommonUtility {
    
    let historyEntry = app.collectionViews.firstMatch.cells.firstMatch.staticTexts[TestData.Result.title]
    let explore = app.buttons[AccessibilityIdentifiers.Home.explore]
    
    func verifyHistory() -> ResultScreen {
        tapOn(historyEntry, action: .exists, description: "search History/verifyHistory")
        return ResultScreen()
    }
    
    func backtoHome() -> HomeScreen {
        tapOn(explore, seconds: 5, action: .exists, description: "goto Explore/verifyHistory")
        return HomeScreen()
    }
}

