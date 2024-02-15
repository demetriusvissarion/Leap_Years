//
//  ContentView.swift
//  Leap_Years
//
//  Created by Demetrius Vissarion on 15/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var inputYear = ""
    @State private var inputYear2 = ""
    @State private var startYear = ""
    @State private var endYear = ""
    @State private var leapYearResults = [String]()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Leap Year Checker App")
                .font(.largeTitle)
            
            Image("homepage1")
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: 200)
            
            Text("Enter a year to check:")
                .bold()
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical, 0)
                .padding(.horizontal, 15)
            
            HStack {
                TextField("Add a year to check", text: $inputYear)
                    .padding(0)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Check") {
                    checkLeapYear()
                }
                .padding(8)
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding(.vertical, 0)
            .padding(.horizontal, 15)
            
            Text("Or check a range of years:")
                .bold()
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical, 0)
                .padding(.horizontal, 15)
            
            HStack {
                TextField("Start year", text: $startYear)
                    .padding(0)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("End year", text: $endYear)
                    .padding(0)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Check") {
                    checkLeapYearsInRange()
                }
                .padding(8)
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding(.vertical, 0)
            .padding(.horizontal, 15)
            
            Text("Or find closest leap year:")
                .bold()
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical, 0)
                .padding(.horizontal, 15)
            
            HStack {
                TextField("Start year", text: $inputYear2)
                    .padding(0)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Check") {
                    findClosestLeapYear()
                }
                .padding(8)
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding(.vertical, 0)
            .padding(.horizontal, 15)
            
            List(leapYearResults, id: \.self) { result in
                Text(result)
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue.opacity(0.7))
        .padding(.horizontal, 0)
        .padding(.vertical, 0)
    }
    
    private func checkLeapYear() {
        guard let year = Int(inputYear) else {
            prependResult("Please enter a valid year.")
            return
        }
        
        let leapYears = Leap_Years()
        if leapYears.checkIfLeapYear(year: year) {
            prependResult("\(year) is a leap year.")
        } else {
            prependResult("\(year) is NOT a leap year.")
        }
        inputYear = ""
    }
    
    private func checkLeapYearsInRange() {
        guard let start = Int(startYear), let end = Int(endYear), start <= end else {
            prependResult("Please enter valid start and end years, where the start year is less than or equal to the end year.")
            return
        }
        
        let leapYears = Leap_Years()
        let results = leapYears.checkIfLeapYearsInRange(start_year: start, end_year: end)
        for (index, year) in (start...end).enumerated() {
            let isLeapYear = results[index]
            let resultString = "\(year) is \(isLeapYear ? "" : "NOT ")a leap year."
            prependResult(resultString)
        }
        startYear = ""
        endYear = ""
    }
    
    private func findClosestLeapYear() {
        guard let year = Int(inputYear2) else {
            prependResult("Please enter a valid year.")
            return
        }
        
        let leapYears = Leap_Years()
        let result = leapYears.findClosestLeapYear(year: year)
        if result == year {
            prependResult("\(year) is a leap year.")
        }
        else
        {
            prependResult("\(year): - Closest leap year is \(result).")
        }
        inputYear2 = ""
    }
    
    private func prependResult(_ result: String) {
        leapYearResults.insert(result, at: 0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}
