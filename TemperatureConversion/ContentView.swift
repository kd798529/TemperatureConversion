//
//  ContentView.swift
//  TemperatureConversion
//
//  Created by Kwaku Dapaah on 10/8/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var temperature = 0
    @State private var inputTempUnit = "F"
    @State private var outputTempUnit = "F"
    
    let temps = ["F", "C", "K"]
    var convert: Double {
        if inputTempUnit == outputTempUnit {
            return Double(temperature)
        }
        
        if inputTempUnit == "F" && outputTempUnit == "C" {
            return roundToNearestHundredth(num: fToC(temp: Double(temperature)))
        }
        
        if inputTempUnit == "F" && outputTempUnit == "K" {
            return roundToNearestHundredth(num: fToK(temp: Double(temperature)))
        }
        
        if inputTempUnit == "C" && outputTempUnit == "F" {
            return roundToNearestHundredth(num: cToF(temp: Double(temperature)))
        }
        
        if inputTempUnit == "C" && outputTempUnit == "K" {
            return roundToNearestHundredth(num: cToK(temp: Double(temperature)))
        }
        
        if inputTempUnit == "K" && outputTempUnit == "C" {
            return roundToNearestHundredth(num: kToC(temp: Double(temperature)))
        }
        
        if inputTempUnit == "K" && outputTempUnit == "F" {
            return roundToNearestHundredth(num: ktoF(temp: Double(temperature)))
        }
        
        return 0
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Temp Selection", selection: $inputTempUnit) {
                        ForEach(temps, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("Select your input temperature unit")
                }
                
                Section {
                    TextField("Enter Temp", value: $temperature, format: .number)
                        .keyboardType(.decimalPad)
                } header: {
                    Text("Enter your temperature")
                }
                
                Section {
                    Picker("Temp Selection", selection: $outputTempUnit) {
                        ForEach(temps, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("Select your output temperature unit")
                }
                
                Section {
                    Text(convert, format: .number)
                } header: {
                    Text("Your Temperature is!")
                }
            }
            .navigationTitle("Temp Converter")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
