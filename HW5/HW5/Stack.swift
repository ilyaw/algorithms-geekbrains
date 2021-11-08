//
//  Stack.swift
//  HW5
//
//  Created by Ilya on 08.11.2021.
//

import Foundation

struct Stack<T> {
    private var array: [T] = []
    
    mutating func push(_ value: T) {
        array.append(value)
    }
    
    mutating func pop() -> T? {
        return array.isEmpty ? nil : array.removeLast()
    }
}
