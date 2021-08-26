//
//  CommonUtilities.swift
//  wikipediaUITestsAssignment
//
//  Created by Kirthika Chinnaswamy on 08/20/21.
//

import XCTest

class UITestAssignment: BaseUITests {

    override func setUp() {
        super.setUp()
    }

    
    func testWikiTest() {
        let searchTerm = TestData.Search.searchTerm
        let searchTitle = TestData.Result.title
        let suggestion = TestData.Search.suggestion
        let heading = AccessibilityIdentifiers.Result.references
        let links : [String] = [TestData.Result.link, TestData.Result.linkTitle]
        let wikiPageElements : [String] = [ TestData.Result.title, TestData.Result.subTitle, AccessibilityIdentifiers.Result.quickFacts, AccessibilityIdentifiers.Result.history, AccessibilityIdentifiers.Result.references, AccessibilityIdentifiers.Result.externalLinks]
        
        HomeScreen()
            .verifyHomePage()
            .wikipediaSearch(searchTerm: searchTerm, suggestion: suggestion, searchTitle: searchTitle)
            .verifyWikiPageLogo()
            .verifyWikiPage(wikiPageElements: wikiPageElements)
            .verifySafariLink(heading: heading,links: links)
            .backToHomeScreen()
            .gotoHistory()
            .verifyHistory()
            .verifyWikiPageLogo()
            .verifyWikiPage(wikiPageElements: wikiPageElements)
            .backToHistory()
            .backtoHome()
            .verifyHomePage()
    }

    override func tearDown() {
        super.tearDown()
    }
}
