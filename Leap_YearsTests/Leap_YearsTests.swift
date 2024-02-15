//
//  Leap_YearsTests.swift
//  Leap_YearsTests
//
//  Created by Demetrius Vissarion on 15/02/2024.
//

import XCTest
@testable import Leap_Years

final class Leap_YearsTests: XCTestCase {

    // Test behaviour of checkIfLeapYear func
    func testIfLeapYear() {
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
    
    // Test behaviour of checkIfLeapYearsInRange func
    func testIfLeapYearsInRange() {
        // Arrange
        let leap_year = Leap_Years()
        
        // Act
        let result1 = leap_year.checkIfLeapYearsInRange(
            start_year: 2015,
            end_year: 2017
        )

        // Assert
        XCTAssertTrue(result1 == [false, true, false])
    }

}

// TDD Extension 1: Write a program that takes a start year and an end year and returns an array of all the leap years between.
