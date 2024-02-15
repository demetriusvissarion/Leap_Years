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

//All years divisible by 400 ARE leap years (e.g. 2000 was a leap year)
//All years divisible by 4 and not by 100 ARE leap years (e.g. 2004, 2008 and 2012 were leap years)

//All years divisible by 100 but not by 400 are NOT leap years (e.g. 1700, 1800 and 1900 were not leap years)
//All years not divisible by 4 are NOT leap years (e.g. 2009, 2010 and 2011 were not leap years)
