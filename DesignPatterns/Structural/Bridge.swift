//
//  Bridge.swift
//  DesignPatterns
//
//  Created by Валентина Евдокимова on 11.08.2022.
//

import Foundation

protocol Switch {
    var appliance: Appliance { get set }
    func turnOn()
}

protocol Appliance {
    func run()
}

final class RemoteControl: Switch {
    var appliance: Appliance

    func turnOn() {
        self.appliance.run()
    }
    
    init(appliance: Appliance) {
        self.appliance = appliance
    }
}

final class TV: Appliance {
    func run() {
        print("Tv turned on");
    }
}

final class Teapot: Appliance {
    func run() {
        print("Teapot turned on")
    }
}
