//
//  Leap_Years.swift
//  Leap_Years
//
//  Created by Demetrius Vissarion on 15/02/2024.
//

import Foundation

class Leap_Years {
    
    func checkIfLeapYear(year: Int) -> Bool {
        if year % 400 == 0
        {
            return true
        } else if year % 4 == 0 && year % 100 != 0
        {
            return true
        } else
        {
            return false
        }
    }
    
    func checkIfLeapYearsInRange(start_year: Int, end_year: Int) -> [Bool] {
        var result = [Bool]()
        for year in start_year...end_year {
            result.append(checkIfLeapYear(year: year))
        }
        return result
    }
    
    func findClosestLeapYear(year: Int) -> Int {
        if checkIfLeapYear(year: year)
        {
            return year
        }
        else if checkIfLeapYear(year: year + 1)
        {
            return year + 1
        }
        else if checkIfLeapYear(year: year - 1)
        {
            return year - 1
        }
        else if checkIfLeapYear(year: year + 2)
        {
            return year + 2
        }
        else if checkIfLeapYear(year: year - 2)
        {
            return year - 2
        }
        else if checkIfLeapYear(year: year + 3)
        {
            return year + 3
        }
        else if checkIfLeapYear(year: year - 3)
        {
            return year - 3
        }
        else
        {
            return year + 4
        }
    }
    
}

// TDD Extension 1: Write a program that takes a start year and an end year and returns an array of all the leap years between.
// TDD Extension 2: Write a program that when given a year, will return the closest leap year (this could be before or after the given year)

// Logic for method findClosestLeapYear: take initial number and:
// add 1 => run checkIfLeapYear, if true stop and return the year
// remove 1 => run checkIfLeapYear, if true stop and return the year
// add 2 => run checkIfLeapYear, if true stop and return the year
// remove 2 => run checkIfLeapYear, if true stop and return the year
// add 3 => run checkIfLeapYear, if true stop and return the year
// remove 3 => run checkIfLeapYear, if true stop and return the year
// add 4 and return the year
