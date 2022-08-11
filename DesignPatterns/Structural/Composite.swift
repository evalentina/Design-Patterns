//
//  Composite.swift
//  DesignPatterns
//
//  Created by Валентина Евдокимова on 11.08.2022.
//

import Foundation

protocol Shape {
    func draw(fillColor: String)
}

final class Square: Shape {
    func draw(fillColor: String) {
        print("Square with color \(fillColor)")
    }
}

final class Circle: Shape {
    func draw(fillColor: String) {
        print("Circle with color \(fillColor)")
    }
}

final class Whiteboard: Shape {

    private lazy var shapes = [Shape]()

    init(_ shapes: [Shape]) {
        self.shapes = shapes
    }

    func draw(fillColor: String) {
        for shape in self.shapes {
            shape.draw(fillColor: fillColor)
        }
    }
}
