//
//  Solution1.swift
//  HW1
//
//  Created by Ilya on 18.10.2021.
//

import Foundation

///Ввести вес и рост человека. Рассчитать и вывести индекс массы тела по формуле:
///I=m/(h*h); где m-масса тела в килограммах, h - рост в метрах.
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
