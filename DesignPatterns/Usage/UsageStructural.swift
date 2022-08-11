//
//  UsageStructural.swift
//  DesignPatterns
//
//  Created by Валентина Евдокимова on 08.08.2022.
//

import Foundation

// MARK: Decorator

let espresso = Espresso()
let capuccino = Milk(сoffee: espresso)
let capuccinoWithSyrup = Syrup(сoffee: capuccino)

// MARK: Adapter

let celsius = CelsiusThermometer(celsius: 24)
let firstTemp = Temperature(thermometer: celsius)
let fahrenheit = FahrenheitThermometer(fahrenheit: 75)
let secondTemp = Temperature(thermometer: Adapter(target: fahrenheit))
//firstTemp.weather()
//secondTemp.weather()

// MARK: Proxy

let lock = ProxyLock()
//lock.open()

// MARK: Bridge

let tvRemoteControl = RemoteControl(appliance: TV())
let teapotRemoteControl = RemoteControl(appliance: Teapot())
//tvRemoteControl.turnOn()
//teapotRemoteControl.turnOn()

















