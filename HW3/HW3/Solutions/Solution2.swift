//
//  Solution2.swift
//  HW3
//
//  Created by Ilya on 01.11.2021.
//

import Foundation

///*Реализовать шейкерную сортировку
func solution2() {
    let randomNumbers = (0...100).randomElements(10)
    shakerSort(array: randomNumbers)
}

fileprivate func shakerSort(array: [Int]) {
    var arr = array
    
    print("До:")
    print(arr)
    
    let lenght = arr.count
    
    if lenght <= 1 {
        return
    }

    var counter = 0
    var isSwap = false
    
    for j in 1...lenght/2 {
    
        isSwap = false
        
        for i in stride(from: 0, to: lenght-1, by: 1) {
            counter += 1
            if arr[i] > arr[i+1] {
                counter += 1
                isSwap = true
                swap(arr: &arr, a: i, b: i+1)
            }
        }
        
        for i in stride(from: lenght-j, to: 1, by: -1) {
            counter += 1
            if arr[i-1] < arr[i-2] {
                counter += 1
                isSwap = true
                swap(arr: &arr, a: i-1, b: i-2)
            }
        }
        
        if !isSwap {
            break
        }
    }
    
    print("После шейкерной сортировки:")
    print(arr)
    print("Количество операций: \(counter)")
}

fileprivate func swap(arr: inout [Int], a: Int, b: Int) {
    let temp = arr[a]
    arr[a] = arr[b]
    arr[b] = temp
}
