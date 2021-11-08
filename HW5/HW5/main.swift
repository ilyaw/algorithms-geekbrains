//
//  main.swift
//  HW5
//
//  Created by Ilya on 08.11.2021.
//

import Foundation

print("Номер задачи 1...3:", terminator: " ")

switch readLine(as: Int.self) {
case 1:
    solution1()
case 2:
    solution2()
case 3:
    solution3()
default:
    break
}
