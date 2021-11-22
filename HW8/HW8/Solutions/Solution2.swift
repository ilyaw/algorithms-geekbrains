//
//  Solution2.swift
//  HW8
//
//  Created by Ilya on 21.11.2021.
//

import Foundation

/// Реализовать быструю сортировку (Quick sort)
func solution2() {
    var randomNumbers = (0...30).map { _ in Int.random(in: 0...1000) }
    
    print("Массив до сортировки:\n\(randomNumbers)")
    
    quickSort(numbers: &randomNumbers, left: 0, right: randomNumbers.count-1)
    print("\nМассив после сортировки:\n\(randomNumbers)")
}

fileprivate func quickSort(numbers: inout [Int], left: Int, right: Int) {
    var middle = numbers[left]
    let leftHold = left
    let rightHold = right
    
    var left = left
    var right = right
    
    while left < right {
        while (numbers[right] >= middle && left < right) {
            right -= 1
        }
        
        if left != right {
            numbers[left] = numbers[right]
            left += 1
        }
        
        while (numbers[left] <= middle && left < right) {
            left += 1
        }
        
        if left != right {
            numbers[right] = numbers[left]
            right -= 1
        }
    }
    
    numbers[left] = middle
    middle = left
    left = leftHold
    right = rightHold
    
    if left < middle {
        quickSort(numbers: &numbers, left: left, right: middle - 1)
    }
    
    if right > middle {
        quickSort(numbers: &numbers, left: middle + 1, right: right)
    }
}
