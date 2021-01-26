//
//  UnitTestPracticeTests.swift
//  UnitTestPracticeTests
//
//  Created by Lawrence Dizon on 1/26/21.
//

import XCTest
@testable import UnitTestPractice

class UnitTestPracticeTests: XCTestCase {
    
    //XCTAssertTrue(something)
    //XCTAssertFalse(something)
    //XCTAssertNil()
    //XCTAssertNotNil()


    func testAddStuff(){
        let math = MathStuff()
        
        let result = math.addNumbers(x: 1, y: 2)
        XCTAssertEqual(result, 3)
        
        //XCTAssertTrue(something)
        //XCTAssertFalse(something)
        //XCTAssertNil()
        //XCTAssertNotNil()
    }
    
    func testMultiplyStuff(){
        let math = MathStuff()
        
        let result = math.multiplyNumbers(x: 1, y: 2)
        XCTAssertEqual(result, 2)
        
        //XCTAssertTrue(something)
        //XCTAssertFalse(something)
        //XCTAssertNil()
        //XCTAssertNotNil()
    }
    
    func testDivideStuff(){
        let math = MathStuff()
        
        let result = math.divideNumbers(x: 1, y: 2)
        XCTAssertEqual(result, 0)
    }
}
