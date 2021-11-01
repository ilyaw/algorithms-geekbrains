//
//  Solution1.swift
//  HW3
//
//  Created by Ilya on 01.11.2021.
//

import Foundation

///1. Попробовать оптимизировать пузырьковую сортировку. Сравнить количество операций сравнения оптимизированной и не оптимизированной программы.
func solution1() {
    let randomArray = (0...100).randomElements(10)
    bubbleStandart(array: randomArray)
    print("")
    bubbleOptimize(array: randomArray)
}

fileprivate func bubbleStandart(array: [Int]) {
    var arr = array
    print("До:")
    print(arr)
    
    let lenght = arr.count
    var counter = 0
    
    for _ in 0..<lenght {
        for j in 0..<lenght-1 {
            counter += 1
            if arr[j] > arr[j+1] {
                counter += 1
                let temp = arr[j+1]
                arr[j+1] = arr[j]
                arr[j] = temp
            }
        }
    }
    
    print("После стандартной пузырьковой сортировки:")
    print(arr)
    print("Количество операций: \(counter)")
}

fileprivate func bubbleOptimize(array: [Int]) {
    var arr = array
    print("До:")
    print(arr)
    
    let lenght = arr.count
    var counter = 0
    
    for _ in 0..<lenght {
        var swap: Bool = false
        for j in 0..<lenght-1 {
            counter += 1
            if arr[j] > arr[j+1] {
                counter += 1
                swap = true
                let temp = arr[j+1]
                arr[j+1] = arr[j]
                arr[j] = temp
            }
        }
        
        if !swap {
            break
        }
        
    }
    
    
    print("После оптимизированной пузырьковой сортировки:")
    print(arr)
    print("Количество операций: \(counter)\n")
}


