//
//  Solution3.swift
//  HW1
//
//  Created by Ilya on 18.10.2021.
//

import Foundation

///Написать программу обмена значениями двух целочисленных переменных:
///a. с использованием третьей переменной;
///b. *без использования третьей переменной.
func solution3() {
    print("Первый вариант:")
    firstOption()
    print("\nВторой вариант:")
    secondOption()
    print("\nТретий вариант:")
    thirdOption()
}

///a. с использованием третьей переменной;
fileprivate func firstOption() {
    var a = 5
    var b = 10
    
    print("До: a = \(a), b = \(b)")
    
    let temp = a
    a = b
    b = temp
    
    print("После: a = \(a), b = \(b)")
}

///b. *без использования третьей переменной.
fileprivate func secondOption() {
    var a = 5
    var b = 10
    
    print("До: a = \(a), b = \(b)")
    
    a = a + b
    b = a - b
    a = a - b
    
    print("После: a = \(a), b = \(b)")
}

///b. *без использования третьей переменной.
fileprivate func thirdOption() {
    var a = 5
    var b = 10

    print("До: a = \(a), b = \(b)")
    
    a = a ^ b
    b = b ^ a
    a = a ^ b
    
    print("После: a = \(a), b = \(b)")
}
