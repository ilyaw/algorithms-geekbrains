//
//  main.swift
//  HW1
//
//  Created by Ilya on 17.10.2021.
//

import Foundation

print("Номер задачи 1...4: ", terminator: " ")

switch readLine(as: Int.self) {
case 1:
    solution1()
case 2:
    solution2()
case 3:
    solution3()
case 4:
    solution4()
default:
    print("Такой задачи нет")
}
