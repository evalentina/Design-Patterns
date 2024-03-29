//
//  Adapter.swift
//  DesignPatterns
//
//  Created by Валентина Евдокимова on 10.08.2022.
//

import Foundation

protocol Celsius {
    var celsius : Double { get }
}

final class Temperature {
    var thermometer: Celsius
    
    init(thermometer: Celsius) {
        self.thermometer = thermometer
    }
    
    func weather() -> String {
        switch thermometer.celsius {
        case -100...5 : return "Cold"
        case 5...15   : return "Normal"
        case 15...25  : return "Warm"
        default       : return "Hot"
        }
    }
}

final class CelsiusThermometer: Celsius {
    var celsius: Double
    
    init(celsius: Double) {
        self.celsius = celsius
    }
}

final class FahrenheitThermometer {
    var fahrenheit: Double
    
    init(fahrenheit: Double) {
        self.fahrenheit = fahrenheit
    }
}

final class Adapter: Celsius {
    var celsius: Double {
        return round(target.fahrenheit - 32)/1.8
    }
    private let target: FahrenheitThermometer
    
    init(target: FahrenheitThermometer) {
        self.target = target
    }
}

