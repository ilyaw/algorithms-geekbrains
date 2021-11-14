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

var node: Node? = Node(value: 8, leftChild: nil, rightChild: nil)

func createNodes() {
    createNode(data: 6, node: &node)
    createNode(data: 7, node: &node)
    createNode(data: 1, node: &node)
    createNode(data: 10, node: &node)
    createNode(data: 5, node: &node)
    createNode(data: 12, node: &node)
    createNode(data: 11, node: &node)
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
