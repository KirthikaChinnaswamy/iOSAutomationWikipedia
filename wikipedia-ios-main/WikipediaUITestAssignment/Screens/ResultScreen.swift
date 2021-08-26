//
//  ResultScreen.swift
//  wikipediaUITestsAssignment
//
//  Created by Kirthika Chinnaswamy on 08/20/21.
//

import Foundation

public class ResultScreen: CommonUtility {
    
    let applogo = app.navigationBars.buttons[AccessibilityIdentifiers.Result.applogo]
    let backSearch = app.navigationBars.firstMatch.buttons[AccessibilityIdentifiers.Result.backSearch]
    let safariBack = springboardApp.buttons[AccessibilityIdentifiers.Result.safariBack]
    let cancel = app.buttons[AccessibilityIdentifiers.Home.cancel].firstMatch
    let backHistory = app.navigationBars.firstMatch.buttons[AccessibilityIdentifiers.Result.backHistory]

    func verifyWikiPageLogo() -> ResultScreen {
        checkForElement(applogo, seconds: 5, action: .exists, description: "appLogo in wikiPage/verifyWikiPageLogo")
        return self
    }
    
    func verifyWikiPage(wikiPageElements: [String]) -> ResultScreen {
        wikiPageElements.forEach {(element) in
            let wikiElement = app.staticTexts[element].firstMatch
            checkForElement(wikiElement, description: "\(element) in wikiPage/verifyWikiPage")
        }
        return self
    }
    
    func verifySafariLink(heading: String, links: [String])  -> ResultScreen {
        let heading = app.staticTexts[heading].firstMatch
        tapOn(heading, action: .exists, description: "expand \(heading)/verifySafariLink")
        
        let link = app.links[links[0]]
        let linkTitle = safariApp.otherElements[links[1]]
        
        tapOn(link, action: .exists, description: "link - \(link) from \(heading)/verifySafariLink")
        checkForElement(linkTitle, seconds: 10, action: .exists, description: "safari Page Title/verifySafariLink")
        tapOn(safariBack, seconds: 5, action: .exists, description: "Back to Wikipedia/verifySafariLink")
        tapOn(heading, action: .exists, description: "collapse \(heading)/verifySafariLink")
        
        return self
    }
    
    func backToHomeScreen() -> HomeScreen{
        tapOn(backSearch, action: .exists, description: "backButton in wikiPage/gotoHomeScreen")
        tapOn(cancel,seconds: 5, action: .exists, description: "cancelbutton from SearchField/gotoHomeScreen")
        return HomeScreen()
    }
    
    func backToHistory() -> HistoryScreen {
        tapOn(backHistory, action: .exists, description: "backButton in wikiPage/tapOnBack")
        return HistoryScreen()
    }
    //    func checkResultsScreen(wikiPageElements: [String]) -> HomeScreen {
    //        wikiPageElements.forEach {(wikiElement) in
    //            let wikiPageElement = app.staticTexts[wikiElement].firstMatch
    //            checkForElement(wikiPageElement, description: "\(wikiElement) in ResultScreen/checkFor\(wikiElement)")
    //        }
    //
    //        verifylogo()
    //
    //        verifyTitle()
    //        verifyHeadings()
    //        expandandCollapse()
    //        verifyExternalLinks()
    //        gotoHomeScreen()
    //        return HomeScreen()
    //    }
    
    
    
    //    func verifyTitle() {
    //        checkForElement(title, seconds: 5, action: .exists, description: "searchResult Title/checkForResultTitle")
    //        checkForElement(subTitle, seconds: 5, action: .exists, description: "SearchResult subTitle/checkForResultSubTitle")
    //    }
    //
    //    func verifyHeadings() {
    //        checkForElement(quicFacts, seconds: 0, action: .exists, description: "quickFacts Heading/checkForQuickFacts")
    //        checkForElement(history, seconds: 0, action: .exists, description: "history Heading/checkForHistory")
    //        checkForElement(references, seconds: 0, action: .exists, description: "references Heading/checkForReferences")
    //        checkForElement(externalLinks, seconds: 0, action: .exists, description: "externalLinks Heading/checkForExternalLinks")
    //    }
    //
    //    func expandandCollapse() {
    //        tapOn(quicFacts, action: .exists, description: "expand QuickFacts/tapOnQuickFacts")
    //        tapOn(quicFacts, action: .exists, description: "expand QuickFacts/tapOnQuickFacts")
    //    }
    //
    //    func verifyExternalLinks() {
    //        tapOn(references, action: .exists, description: "expand References/tapOnReferences")
    //        tapOn(link, action: .exists, description: "link from References/tapOnlinktoSafari")
    //        checkForElement(linkTitle, seconds: 5, action: .exists, description: "safari Page Title/checkForPageTitle")
    //        tapOn(safariBack, seconds: 5, action: .exists, description: "Back to Wikipedia/tapOnBacktoWikipedia")
    //    }
}
