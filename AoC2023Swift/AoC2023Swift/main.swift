//
//  main.swift
//  AoC2023Swift
//
//  Created by Piotr Kazimierski on 01/12/2023.
//

import Foundation

print("Hello, World!")

// Example usage:
let filePath = "/Users/inquis1t0r/Documents/Development/AdventOfCode2023/AoC2023Swift/AoC2023Swift/Day1input.markdown" //TODO: Markdown -> .txt

// Assuming your file contains integers, you can instantiate the FileReader like this:
//let fileReader = FileReader<Int>(filePath: filePath)
let fileReader = FileReader<String>(filePath: filePath)

// Read lines from the file
if let lines = fileReader.readLines() {
    for line in lines {
        //print(line)
    }
    //print("Lines from file: \(lines)")
} else {
    print("Failed to read lines from the file.")
}

func extractFirstAndLastDigits(from input: String) -> (Int?, Int?) {
    // Filter out non-digit characters
    let digits = input.compactMap { Int(String($0)) }
    
    // Check if there are any digits
    guard !digits.isEmpty else {
        return (nil, nil)
    }
    
    // Return the first and last digits
    return (digits.first, digits.last)
}

// Example usage:
let example1 = "abc123def456"
let example2 = "xyz789"
let example3 = "noDigitsHere"

let result1 = extractFirstAndLastDigits(from: example1)
let result2 = extractFirstAndLastDigits(from: example2)
let result3 = extractFirstAndLastDigits(from: example3)

//TODO: unwrapping? 
print("Example 1: \(result1)") // (1, 6)
print("Example 2: \(result2)") // (7, 9)
print("Example 3: \(result3)") // (nil, nil)
