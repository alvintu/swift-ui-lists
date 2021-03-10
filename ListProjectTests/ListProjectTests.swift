//
//  ListProjectTests.swift
//  ListProjectTests
//
//  Created by Alvin Tu on 3/10/21.
//

import XCTest
@testable import ListProject

class ListProjectTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        
        let manager = TodoListManager.emptyState()
        XCTAssertTrue(manager.items.count == 0, "manager's empty state should equal zero")
        
        
        manager.addItem()
        XCTAssertTrue(manager.items.count == 1,  "manager should have one items")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
