/// Copyright (c) 2021 Razeware LLC
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

@testable import BullsEye //Gives unit test access to internal types and functions in BullsEye
import XCTest

class BullsEyeTests: XCTestCase {
  
  var sut: BullsEyeGame! //Placeholder for BullsEyeGame, (System Under Test), or the object the test case is concerned with testing

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
      super.setUp()
      sut = BullsEyeGame()
      sut.startNewGame()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
      sut = nil
      super.tearDown()
    }
  
  func testScoreIsComputed(){
    // 1. given
    let guess = sut.targetValue + 5
    
    // 2. when
    sut.check(guess: guess)
    
    // 3. then
    XCTAssertEqual(sut.scoreRound, 95, "Score computed from guess is wrong")
  }
  
  func testScoreisComputedWhenGuessLTTarget(){
    // 1. given - you set up any values needed
    let guess = sut.targetValue + 5
    
    // 2. when - execute code to be tested
    sut.check(guess: guess)
    
    // 3. then - assert the result you expect w/ a message to print if the test fails
    XCTAssertEqual(sut.scoreRound, 95, "Score completed from guess is wrong")
    
  }
  
  func testScoreIsComputedWhenGuessLTTarget() {
    // 1. given -
    let guess = sut.targetValue - 5

    // 2. when
    sut.check(guess: guess)

    // 3. then
    XCTAssertEqual(sut.scoreRound, 95, "Score computed from guess is wrong")
  }

 

}
