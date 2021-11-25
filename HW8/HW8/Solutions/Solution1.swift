//
//  Solution1.swift
//  HW8
//
//  Created by Ilya on 21.11.2021.
//

import Foundation

/// Реализовать сортировку подсчетом.
func solution1() {
    let sizeArray = 50
    let maxCountValue = 200
    
    let array = (1...sizeArray).map { _ in Int.random(in: 0..<maxCountValue) }
    var sortArray = Array(repeating: 0, count: maxCountValue)
    
    for i in 0..<sizeArray {
        sortArray[array[i]] += 1
    }
    
    for (index, value) in sortArray.enumerated() where value > 0 {
        print(index, terminator: ", ")
    }
}
