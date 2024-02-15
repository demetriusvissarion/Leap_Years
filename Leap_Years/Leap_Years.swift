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
    
}

// Write a program that takes a start year and an end year and returns an array of all the leap years between.
