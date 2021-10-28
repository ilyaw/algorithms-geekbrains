//
//  Solution4.swift
//  HW1
//
//  Created by Ilya on 18.10.2021.
//

import Foundation

///Написать программу нахождения корней заданного квадратного уравнения.
func solution4() {
    let a:Double = 10
    let b:Double = 33
    let c:Double = 1
    
    if a == 0 {
        print("a не может быть = 0")
    } else {
        let d = pow(b, 2) - 4*a*c
        
        if d < 0 {
            print("Корней нет")
        } else if d == 0 {
            let x:Double = (-b/(2*a))
            print("Дискриминант = 0, корень равен \(x)")
        } else if d > 0 {
            let x1:Double = ((-b + sqrt(d)) / (2 * a))
            let x2:Double = ((-b - sqrt(d)) / (2 * a))
            
            print("Дискриминант = \(d)\nx1 = \(x1)\nx2 = \(x2)")
        }
    }
}
