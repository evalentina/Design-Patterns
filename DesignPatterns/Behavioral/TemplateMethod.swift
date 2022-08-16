//
//  TemplateMethod.swift
//  DesignPatterns
//
//  Created by Валентина Евдокимова on 16.08.2022.
//

import Foundation

protocol File {
    func openFile()
    func workWithFile()
    func closeFile()
}

extension File {

    func editFile() {
        openFile()
        workWithFile()
        closeFile()
    }
}

final class FileEdit: File {

    func openFile() {
        print ("Open PDF file")
    }

    func workWithFile() {
        print ("Edit File")
    }

    func closeFile() {
       print ("Close File")
    }
}
