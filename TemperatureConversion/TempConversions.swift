//
//  TempConversions.swift
//  TemperatureConversion
//
//  Created by Kwaku Dapaah on 10/10/22.
//

import Foundation

func fToC(temp: Double) -> Double {
    
    return (temp - 32.0) * 5.0 / 9.0
}

func cToF(temp: Double) -> Double {
    
    return (temp * 9.0/5.0) + 32.0
}

func ktoF(temp: Double) -> Double {
    
    return (temp - 273.15) * 9/5 + 32
}

func kToC(temp: Double) -> Double {
    
    return temp - 273.15
}

func fToK(temp: Double) -> Double {
    
    return (temp - 32) * 5/9 + 273.15
}

func cToK(temp: Double) -> Double {
    
    return temp + 273.15
}

func roundToNearestHundredth(num: Double) -> Double {
    return Double(round(100 * num) / 100)
}


