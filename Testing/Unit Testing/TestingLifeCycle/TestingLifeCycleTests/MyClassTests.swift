//
//  MyClassTests.swift
//  TestingLifeCycleTests
//
//  Created by Lawrence Dizon on 5/18/21.
//

import XCTest
@testable import TestingLifeCycle

class MyClassTests: XCTestCase {
    private var sut: MyClass!
    
    override func setUp() {
        super.setUp()
        sut = MyClass()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    func test_MethodOne(){
        
        
        
        sut.methodOne()
        //XCTFail("Failed, yo")
        
        //Normally, assert something here
    }
    
    func test_MethodTwo(){
        
        sut.methodTwo()
        //Normally, assert something
    }

}
