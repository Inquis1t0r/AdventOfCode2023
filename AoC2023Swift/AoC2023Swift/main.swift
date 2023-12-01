//
//  main.swift
//  AoC2023Swift
//
//  Created by Piotr Kazimierski on 01/12/2023.
//

import Foundation

print("Hello, World!")

// Example usage:
let filePath = "/Users/inquis1t0r/Documents/Development/AdventOfCode2023/AoC2023Swift/AoC2023Swift/Day1input.markdown"

// Assuming your file contains integers, you can instantiate the FileReader like this:
let fileReader = FileReader<Int>(filePath: filePath)

// Read lines from the file
if let lines = fileReader.readLines() {
    print("Lines from file: \(lines)")
} else {
    print("Failed to read lines from the file.")
}
