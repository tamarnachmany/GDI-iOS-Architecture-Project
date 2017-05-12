//
//  iOSArchitectureProjectTests.swift
//  iOSArchitectureProjectTests
//
//  Created by Tamar Nachmany on 5/7/17.
//  Copyright © 2017 Girl Develop It. All rights reserved.
//

import XCTest
@testable import iOSArchitectureProject

class iOSArchitectureProjectTests: XCTestCase {
    
    func testMoreThanFiveEvents() {
        let delegate = ButtonDelegate()
        let events = [AnalyticsEvent(), AnalyticsEvent(), AnalyticsEvent(), AnalyticsEvent(), AnalyticsEvent(), AnalyticsEvent()]
        delegate.sendEvent(events)
        
        // You can
        XCTAssertEqual(events, [])
    }
    
    func testLessThanFiveEvents() {
        let delegate = ButtonDelegate()
        let events = [AnalyticsEvent()]
        delegate.sendEvent(events)
        XCTAssert(<#T##expression: Bool##Bool#>)
    }
}
