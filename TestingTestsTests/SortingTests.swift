//
//  SortingTests.swift
//  TestingTestsTests
//
//  Created by Max Krefting on 29/01/2021.
//  Copyright © 2021 Max Krefting. All rights reserved.
//

import XCTest
@testable import TestingTests

class SortingTests: XCTestCase {

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
    
    let sorts = Sorting()
    
    let testData = [10,9,8,7,6,5,4,3,2,1]
    let expectedResult = [1,2,3,4,5,6,7,8,9,10]
    
    func testBubbleSort(){
        XCTAssertEqual(sorts.bubbleSort(list:testData), expectedResult)
    }
    
    func testMergeSort(){
        XCTAssertEqual(sorts.mergeSort(list:testData), expectedResult)
    }
    
    func testInsertionSort(){
        XCTAssertEqual(sorts.insertionSort(list:testData), expectedResult)
    }
    
    func testQuickSort(){
        XCTAssertEqual(sorts.quickSort(list:testData), expectedResult)
    }


}
