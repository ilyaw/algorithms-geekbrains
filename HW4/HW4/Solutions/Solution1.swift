//
//  Solution1.swift
//  HW4
//
//  Created by Ilya on 04.11.2021.
//

import Foundation

///1. *Количество маршрутов с препятствиями. Реализовать чтение массива с препятствием и нахождение количество маршрутов.
func solution1() {
    //размер поля
    let n = 8
    let m = 8

    var chessField = Array(repeating: Array(repeating: 0, count: n), count: m)
    
    for j in stride(from: 0, to: m, by: 1) {
        chessField[0][j] = 1
    }
    
    var map = Array(repeating: Array(repeating: true, count: n), count: m)
    
    //координаты препятствий
    map[2][3] = false
    map[5][5] = false
    map[3][7] = false
    
    for i in stride(from: 1, to: n, by: 1) {
        chessField[i][0] = 1
        for j in stride(from: 1, to: m, by: 1) {
            if map[i][j] {
                chessField[i][j] = chessField[i][j-1] + chessField[i-1][j]
            } else {
                chessField[i][j] = 0
            }
        }
    }
    
    printArray(array: chessField)
}

fileprivate func printArray(array: [[Int]]) {
    let n = array.count
    let m = array[0].count
    
    for i in stride(from: 0, to: n, by: 1) {
        for j in stride(from: 0, to: m, by: 1) {
            print("\(array[i][j])", terminator: "\t\t")
        }
        print("")
    }
}
