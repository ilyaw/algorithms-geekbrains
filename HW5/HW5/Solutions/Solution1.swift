//
//  Solution1.swift
//  HW5
//
//  Created by Ilya on 08.11.2021.
//

import Foundation

///Реализовать перевод из десятичной в двоичную систему счисления с использованием стека.
func solution1() {
    print("Введите число: ", terminator: "")
    
    guard var number = readLine(as: Int.self) else {
        print("Введите число!")
        return
    }
    
    var stack = Stack<Int>()
    
    while number > 0 {
        stack.push(number % 2)
        number /= 2
    }
    
    while let value = stack.pop() {
        print(value, terminator: "")
    }
    
    print("")
}
