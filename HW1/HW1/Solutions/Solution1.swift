//
//  solution1.swift
//  HW1
//
//  Created by Ilya on 18.10.2021.
//

import Foundation

func solution1() {
    print("Рост в см:", terminator:" ")
    let height = readLine(as: Double.self)
    print("Вес:", terminator: " ")
    let weight = readLine(as: Double.self)
    
    guard let height = height, let weight = weight else {
        print("Некорректно введены значения")
        return
    }
    
    let heightInMeteres = height/100
    let bodyMassIndex = weight/(heightInMeteres*heightInMeteres)
        
    print("ИМТ = \(String(format: "%.2f", bodyMassIndex))")
}
