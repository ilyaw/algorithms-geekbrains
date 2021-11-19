//
//  Queue.swift
//  HW5
//
//  Created by Ilya on 08.11.2021.
//

import Foundation

//Реализовать очередь с использованием массива.
struct Queue<T> {
    private var array: [T] = []
    
    mutating func enqueue(_ value: T) {
        array.append(value)
    }
    
    mutating func dequeue() -> T? {
        return array.isEmpty ? nil : array.removeFirst()
    }
}
