//
//  Solution2.swift
//  HW2
//
//  Created by Ilya on 22.10.2021.
//

import Foundation

///Реализовать функцию возведения числа a в степень b:
func solution2() {
    print("Введите число:", terminator:" ")
    let number = readLine(as: Int.self)
    print("Введите степень:", terminator: " ")
    let power = readLine(as: Int.self)
    
    if let number = number, let power = power {
        let result = pow1(number, power)
        print("\(number)^\(power)=\(result)")
        
        print("Рекурсией:")
        let result2 = pow2(number, power)
        print("\(number)^\(power)=\(result2)")
        
        print("Рекурсией 2:")
        let result3 = pow3(number, power)
        print("\(number)^\(power)=\(result3)")
        
    } else {
        print("Некорректно введено значение")
    }
}

///a. Без рекурсии.
fileprivate func pow1(_ number: Int, _ power: Int) -> Int {
    var result = number
    for _ in 1..<power {
        result *= number
    }
    
    return result
}

///b. Рекурсивно.
fileprivate func pow2(_ number: Int, _ power: Int) -> Int {
    if power == 1 {
        return number
    }
    return number * pow2(number, power-1)
}


///c. *Рекурсивно, используя свойство чётности степени.
fileprivate func pow3(_ number: Int, _ power: Int) -> Int {
    if power == 0 {
        return 1
    }
    
    if power % 2 == 1 {
        return number * pow3(number, power-1)
    } else {
        let x = pow3(number, power/2)
        return x * x
    }
}

