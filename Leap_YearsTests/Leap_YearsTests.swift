//
//  Leap_YearsTests.swift
//  Leap_YearsTests
//
//  Created by Demetrius Vissarion on 15/02/2024.
//

import XCTest
@testable import Leap_Years

final class Leap_YearsTests: XCTestCase {

    // Test behaviour of leap_year func
    func testLeap_Years() {
        // Arrange
        let leap_year = Leap_Years()
        
        // Act
        let result1 = leap_year.checkIfLeapYear(year: 2020)
        let result2 = leap_year.checkIfLeapYear(year: 1970)
        let result3 = leap_year.checkIfLeapYear(year: 1900)
        let result4 = leap_year.checkIfLeapYear(year: 1988)
        let result5 = leap_year.checkIfLeapYear(year: 1500)
        
        // Assert
        XCTAssertTrue(result1) // should return true
        XCTAssertFalse(result2) // sould return false
        XCTAssertFalse(result3) // sould return false
        XCTAssertTrue(result4) // sould return true
        XCTAssertFalse(result5) // sould return false
    }

}


//override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
//
//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//        // Any test you write for XCTest can be annotated as throws and async.
//        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
//        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
//    }
//
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }
