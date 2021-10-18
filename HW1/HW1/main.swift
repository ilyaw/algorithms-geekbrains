//
//  main.swift
//  HW1
//
//  Created by Ilya on 17.10.2021.
//

import Foundation

print("Номер задачи:", terminator: " ")

switch readLine(as: Int.self) {
case 1:
    solution1()
case 2:
    solution2()
default:
    print("Такой задачи нет")
}
