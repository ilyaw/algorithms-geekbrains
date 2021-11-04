//
//  Solution1.swift
//  HW4
//
//  Created by Ilya on 04.11.2021.
//

import Foundation

///1. *Количество маршрутов с препятствиями. Реализовать чтение массива с препятствием и нахождение количество маршрутов.
func solution1() {
    let n = 8
    let m = 8

    var a = Array(repeating: Array(repeating: 0, count: n), count: m)
    
    for j in stride(from: 0, to: m, by: 1) {
        a[0][j] = 1
    }
    
    print(a)
    
    var map = Array(repeating: Array(repeating: true, count: n), count: m)
    
    
    map[2][3] = false
    map[5][5] = false
    map[3][7] = false
    
    for i in stride(from: 1, to: n, by: 1) {
        a[i][0] = 1
        for j in stride(from: 1, to: m, by: 1) {
            if map[i][j] {
                a[i][j] = a[i][j-1] + a[i-1][j]
            } else {
                a[i][j] = 0
            }
        }
    }
    
    print(a)
}
