//
//  Proxy.swift
//  DesignPatterns
//
//  Created by Валентина Евдокимова on 10.08.2022.
//

import Foundation

protocol LockingSystem {
    func open()
    func close()
}

final class Lock: LockingSystem {
    
    func open() {
        print("Unlock")
    }
    
    func close() {
        print("Lock")
    }
}

final class ProxyLock: LockingSystem {
    
    private var lock: Lock = Lock()
    func open() {
        print("Additional operations...")
        lock.open()
    }
    
    func close() {
        lock.close()
    }
}
