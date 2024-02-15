//
//  ContentView.swift
//  Leap_Years
//
//  Created by Demetrius Vissarion on 15/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var inputYear = ""
    @State private var leapYearResults = [String]()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Leap Year Checker App")
                .font(.largeTitle)
            
            Image("homepage1")
                .resizable()
                .frame(width: .infinity, height: 200.0)
            
            HStack {
                TextField("Add a year to check", text: $inputYear)
                    .padding()
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Check") {
                    checkLeapYear()
                }
                .padding(8)
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding(.trailing, 30)
            List(leapYearResults, id: \.self) { result in
                Text(result)
            }
            
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue.opacity(0.7))
        .padding(.horizontal, 0)
        .padding(.vertical, 0)
        
        HStack {
            
        }
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
