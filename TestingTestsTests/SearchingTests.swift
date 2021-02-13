//
//  SearchingTests.swift
//  TestingTestsTests
//
//  Created by Max Krefting on 29/01/2021.
//  Copyright © 2021 Max Krefting. All rights reserved.
//

import XCTest
@testable import TestingTests

class SearchingTests: XCTestCase {

    /*
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
*/
    
    let searches = Searching()
    
    let list = [1,2,3,4,5]
    
    let targetNormal = 3
    let targetBoundary = -1
    let targetErroneous = "no"
    
    func testLinearSearch(){
        XCTAssertTrue(searches.linearSearch(list:list,target:targetNormal))
        XCTAssertFalse(searches.linearSearch(list:list,target:targetBoundary))
    }
    
    func testBinarySearch(){
        XCTAssertTrue(searches.binarySearch(list:list,target:targetNormal))
        XCTAssertFalse(searches.binarySearch(list:list,target:targetBoundary))
    }

}
