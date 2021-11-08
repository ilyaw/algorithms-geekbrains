//
//  Solution3.swift
//  HW5
//
//  Created by Ilya on 08.11.2021.
//

import Foundation

func solution3() {
    
    print("Очередь:")
    var queue = Queue<Int>()
    
    queue.enqueue(1)
    queue.enqueue(2)
    queue.enqueue(3)
    
    while let value = queue.dequeue() {
        print(value)
    }
}


