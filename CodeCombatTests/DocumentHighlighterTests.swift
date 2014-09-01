//
//  DocumentTests.swift
//  CodeCombat
//
//  Created by Michael Schmatz on 8/27/14.
//  Copyright (c) 2014 CodeCombat. All rights reserved.
//

import Foundation
import XCTest

class DocumentHighlighterTests: XCTestCase {
  
  var documentHighlighter = DocumentHighlighter()
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
    documentHighlighter = DocumentHighlighter()
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testExample() {
    // This is an example of a functional test case.
    XCTAssert(true, "Pass")
  }
  
  func testFunctionality() {
    let provider = LanguageProvider()
    let parser = LanguageParser(scope: "javascript", data: "console.log(\"Hello World\");", provider: provider)
    let parseRootNode = parser.parse()
    XCTAssertTrue(parseRootNode != nil, "The parse root node shouldn't be false ")
  }
  
  func testPerformanceExample() {
    // This is an example of a performance test case.
    self.measureBlock() {
      // Put the code you want to measure the time of here.
    }
  }
  
}
