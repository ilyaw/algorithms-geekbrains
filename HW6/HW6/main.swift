//
//  main.swift
//  HW6
//
//  Created by Ilya on 11.11.2021.
//

import Foundation

print("Номер задачи 1...2:", terminator: " ")

switch readLine(as: Int.self) {
case 1:
    solution1()
case 2:
    solution2()
default:
    break
}
