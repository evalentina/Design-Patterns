//
//  Command.swift
//  DesignPatterns
//
//  Created by Валентина Евдокимова on 14.08.2022.
//

import Foundation

protocol DoorExecute {
    var doorName:String {get set}
    func execute()
}


class DoorOpen: DoorExecute {
    
    var doorName: String
    
    init(doorName: String) {
        self.doorName = doorName
    }
    
    func execute() {
        print("Opened door \(self.doorName)")
    }
    
}

class DoorClose: DoorExecute {
    
    var doorName: String
    
    init(doorName: String) {
        self.doorName = doorName
    }
    
    func execute() {
        print("Closed door \(self.doorName)")
    }
    
}

class Door {
    
    private var doorOpen:DoorExecute
    private var doorClose:DoorExecute

    init(doorName: String) {
        doorOpen = DoorOpen(doorName: doorName)
        doorClose = DoorClose(doorName: doorName)
    }
    
    func open() {
        doorOpen.execute()
    }
    
    func close() {
        doorClose.execute()
    }
    
}
