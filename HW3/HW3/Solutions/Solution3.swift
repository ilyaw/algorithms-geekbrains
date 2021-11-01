//
//  Solution3.swift
//  HW3
//
//  Created by Ilya on 01.11.2021.
//

import Foundation

///Реализовать бинарный алгоритм поиска в виде функции, которой передается отсортированный массив. Функция возвращает индекс найденного элемента или -1, если элемент не найден.
func solution3() {
    let numbers = Array(5...29)
    print(numbers)
    print("Введите искомое число:", terminator: " ")
    if let number = readLine(as: Int.self) {
        let result = binarySearch(array: numbers, searchValue: number)
        if result == -1 {
            print("Value not found")
        } else {
            print("Index \(result)")
        }
    }
    
}

fileprivate func binarySearch(array: [Int], searchValue: Int) -> Int {
    if searchValue < array[0] {
        return -1
    }
    
    var left = 0
    var right = array.count - 1
    var middle = left + (right - left) / 2
    
    while left <= right && array[middle] != searchValue {
        if array[middle] < searchValue {
            left = middle + 1
        } else {
            right = middle - 1
        }
        middle = left + (right - left) / 2
    }
    
    if middle != array.count {
        return middle
    }
    return -1
}
