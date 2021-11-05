//
//  Solution2.swift
//  HW4
//
//  Created by Ilya on 05.11.2021.
//

import Foundation

fileprivate var c = [[Int]]()
fileprivate var b = [[Character]]()
fileprivate var x: String = ""

///Решить задачу о нахождении длины максимальной последовательности с помощью матрицы.
func solution2() {
    print("Введите первую последовательность: ", terminator: "")
    let firstSequence = readLine()
    print("Введите вторую последовательность: ", terminator: "")
    let secondSequence = readLine()
    
    guard let firstSequence = firstSequence,
          let secondSequence = secondSequence else {
              print("Некорректно введены значения для последовательности")
              return
          }
    
    x = firstSequence
    
    lcs(firstSequence: firstSequence, secondSequence: secondSequence)
    
}

fileprivate func lcs(firstSequence: String, secondSequence: String) {
    let m = firstSequence.count
    let n = secondSequence.count
    
    c = Array(repeating: Array(repeating: 0, count: n+1), count: m+1)
    b = Array(repeating: Array(repeating: " ", count: n+1), count: m+1)
    
    for i in stride(from: 1, through: m, by: 1) {
        for j in stride(from: 1, through: n, by: 1) {
            if firstSequence[i-1] == secondSequence[j-1] {
                c[i][j] = c[i-1][j-1] + 1
                b[i][j] = "c"
            } else if c[i-1][j] >= c[i][j-1] {
                c[i][j] = c[i-1][j]
                b[i][j] = "u"
            } else {
                c[i][j] = c[i][j-1]
                b[i][j] = "l"
            }
        }
    }
    
    printArray(array: c)
    printArray(array: b)
    
    print("Самая длинная общая последовательность: ", terminator: "")
    printLongestSequence(i: m, j: n)
    
    print("\n")
}

fileprivate func printLongestSequence(i: Int, j: Int) {
    if i == 0 || j == 0 {
        return
    }
    
    if b[i][j] == "c" {
        printLongestSequence(i: i-1, j: j-1)
        print(x[i-1], terminator: "")
    } else if b[i][j] == "u" {
        printLongestSequence(i: i-1, j: j)
    } else {
        printLongestSequence(i: i, j: j-1)
    }
}

fileprivate func printArray<T>(array: [[T]]) {
    let n = array.count
    let m = array[0].count
    
    for i in stride(from: 0, to: n, by: 1) {
        for j in stride(from: 0, to: m, by: 1) {
            print("\(array[i][j])", terminator: "\t\t")
        }
        print("")
    }
}
