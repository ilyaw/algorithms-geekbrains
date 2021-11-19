//
//  Solution1.swift
//  HW7
//
//  Created by Ilya on 15.11.2021.
//

import Foundation

func solution1() {
    print("Матрица смежности\n")
    let n = 5
    var matrix = Array(repeating: Array(repeating: 0, count: n), count: n)
    
    do {
        if let path = Bundle.main.path(forResource: "matrix", ofType: "txt"){
            let data = try String(contentsOfFile:path, encoding: String.Encoding.utf8)
            for (i, list) in data.components(separatedBy: "\n").dropLast().enumerated() {
                for (j, value) in list.components(separatedBy: " ").enumerated() {
                    if let value = Int(value) {
                        matrix[i][j] = value
                    }
                }
            }
        }
    }catch {
        print(error.localizedDescription)
    }
    
    printMatrix(matrix: matrix)
}

fileprivate func printMatrix(matrix: [[Int]]) {
    let n = matrix.count
    let l = 65
    
    print("", terminator: "  ")
    
    for i in 0..<n {
        print(Character(UnicodeScalar(l+i) ?? "-"), terminator: " ")
    }
    
    print("\n")
    
    for i in 0..<n {
        print(Character(UnicodeScalar(l+i) ?? "-"), terminator: " ")
        for j in 0..<n {
            print(matrix[i][j], terminator: " ")
        }
        print("\n")
    }
}
