//
//  Solution1.swift
//  HW2
//
//  Created by Ilya on 21.10.2021.
//

import Foundation

///Реализовать функцию перевода чисел из десятичной системы в двоичную, используя рекурсию.
func solution1() {
    print("Введите число:", terminator:" ")
    
    if let number = readLine(as: Int.self) {
        decToBin(n: number)
        print("")
    } else {
        print("Некорректно введено значение")
    }
}

fileprivate func decToBin(n: Int) {
    if n > 1 {
        decToBin(n: n/2)
    }
    print(n % 2, terminator:"")
}
