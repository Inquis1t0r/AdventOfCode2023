//
//  FileReader.swift
//  AoC2023Swift
//
//  Created by Piotr Kazimierski on 01/12/2023.
//

import Foundation

class FileReader<T> where T: LosslessStringConvertible {
    
    let filePath: String
    
    init(filePath: String) {
        self.filePath = filePath
    }
    
    func readLines() -> [T]? {
        do {
            // Read the contents of the file into a string
            let content = try String(contentsOfFile: filePath, encoding: .utf8)
            
            // Split the string into an array of lines
            let lines = content.components(separatedBy: .newlines)
            
            // Convert the lines to the generic type T
            let values = lines.compactMap { T($0) }
            
            return values
        } catch {
            print("Error reading file: \(error)")
            return nil
        }
    }
}
