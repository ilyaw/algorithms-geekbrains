//
//  Node.swift
//  HW6
//
//  Created by Ilya on 14.11.2021.
//

import Foundation

class Node {
    let value: Int
    var leftChild: Node?
    var rightChild: Node?
    
    init(value: Int, leftChild: Node?, rightChild: Node?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

func createNode(data: Int, node: inout Node?) {
    guard let node = node else {
        node = Node(value: data, leftChild: nil, rightChild: nil)
        return
    }
    
    if node.value <= data {
        createNode(data: data, node: &node.rightChild)
    } else {
        createNode(data: data, node: &node.leftChild)
    }
}

func printTree(node: Node?) {
    guard let node = node else {
        return
    }

    print("\(node.value)")
    
    if node.leftChild != nil || node.rightChild != nil  {
        print("(")
        
        if let leftNode = node.leftChild {
            printTree(node: leftNode)
        } else {
            print("NULL")
        }
        
        print(",")
        
        if let rightNode = node.rightChild {
            printTree(node: rightNode)
        } else {
            print("NULL")
        }
        
        print(")")
    }
    
}

fileprivate func print(_ text: String) {
    print(text, terminator: "")
}
