//
//  Solution2.swift
//  HW1
//
//  Created by Ilya on 18.10.2021.
//

import Foundation

///Найти максимальное из четырех чисел. Массивы не использовать.
func solution2() {
    let val1 = 55
    let val2 = 25
    let val3 = -100
    let val4 = 19
    
    let firstPair = val1 > val2 ? val1 : val2
    let secondPair = val3 > val4 ? val3 : val4
    
    let max = firstPair > secondPair ? firstPair : secondPair
    print("Максимальное число = \(max)")
}
