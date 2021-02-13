//
//  TestingTestsTests.swift
//  TestingTestsTests
//
//  Created by Max Krefting on 28/01/2021.
//  Copyright © 2021 Max Krefting. All rights reserved.
//

import XCTest
@testable import TestingTests

class TestingTestsTests: XCTestCase {

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
    }*/
    
    let newFile = testFileClass()
    
    func testSayHello(){
        
        let testEx = "Hello Max"
        
        XCTAssertEqual(newFile.sayHello(), testEx)
    }
        
    func testAddThreeNs(){
        
        XCTAssertEqual(newFile.addThreeNs(x:1,y:2,z:3),6)
        XCTAssertEqual(newFile.addThreeNs(x:0,y:-1,z:100),99)
        
    }
    
    func testLinearSearch(){

        let list = [1,2,3,4,5]
        
        let target1 = 1
        let target2 = 5
        
        let target3 = 0
        let target4 = 10
        
        XCTAssertTrue(newFile.linearSearch(target:target1,list:list))
        XCTAssertTrue(newFile.linearSearch(target:target2,list:list))
        
        XCTAssertFalse(newFile.linearSearch(target:target3,list:list))
        XCTAssertFalse(newFile.linearSearch(target:target4,list:list))
        
        
    }

}
