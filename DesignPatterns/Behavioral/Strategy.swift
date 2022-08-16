//
//  Strategy.swift
//  DesignPatterns
//
//  Created by Валентина Евдокимова on 16.08.2022.
//

import Foundation

protocol Sortable {
    func sort(array: [Int]) -> [Int]
}

class Math {
    
    private var sortable: Sortable
    
    init(sorted: Sortable) {
        self.sortable = sorted
    }
    
    func sort(array: [Int]) -> [Int] {
        return sortable.sort(array: array)
    }
    
}

final class BubbleSort: Sortable {
    func sort(array: [Int]) -> [Int] {
        print("Bubble Sort Algorithm")
        return array
    }
}

final class MergeSort: Sortable {
    func sort(array: [Int]) -> [Int] {
        print("Merge Sort Algorithm")
        return array
    }
}
