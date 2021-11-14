//
//  Solution2.swift
//  HW6
//
//  Created by Ilya on 14.11.2021.
//

import Foundation

///2. Переписать программу, реализующую двоичное дерево поиска.
///а) Добавить в него обход дерева различными способами;
///б) Реализовать поиск в двоичном дереве поиска;
func solution2() {
    let node = createTree()
    
    print("Двоичное дерево в виде скробочной записи:")
    printTree(node: node)
    
    print("\nВведите число для поиска в дереве:", terminator: " ")
    guard let input = readLine(as: Int.self) else {
        print("Введите число")
        return
    }

    let searchResult = search(node: node, searchValue: input)
    print("Число \(input) \(searchResult ? "найдено" : "не найдено")")
    
    print("КЛП:", terminator: " ")
    preOrderTravers(node: node)
  
    print("\nЛКП:", terminator: " ")
    inOrderTravers(node: node)
    
    print("\nЛПК:", terminator: " ")
    postOrderTravers(node: node)
    
    print("\n")
}

// MARK: а) Добавить в него обход дерева различными способами;

/// КЛП. Обход в прямом порядке
fileprivate func preOrderTravers(node: Node?) {
    if let node = node {
        print("\(node.value)", terminator: " ")
        preOrderTravers(node: node.leftChild)
        preOrderTravers(node: node.rightChild)
    }
}

/// ЛКП. Симметричный обход
fileprivate func inOrderTravers(node: Node?) {
    if let node = node {
        inOrderTravers(node: node.leftChild)
        print("\(node.value)", terminator: " ")
        inOrderTravers(node: node.rightChild)
    }
}

/// ЛПК. Обход в обратном порядке
fileprivate func postOrderTravers(node: Node?) {
    if let node = node {
        postOrderTravers(node: node.leftChild)
        postOrderTravers(node: node.rightChild)
        print("\(node.value)", terminator: " ")
    }
}

// MARK: б) Реализовать поиск в двоичном дереве поиска;

fileprivate func search(node: Node?, searchValue: Int) -> Bool {
    guard let node = node else { return false }
    
    if node.value == searchValue {
        return true
    } else if searchValue < node.value {
        return search(node: node.leftChild, searchValue: searchValue)
    } else {
        return search(node: node.rightChild, searchValue: searchValue)
    }
}

// MARK: Создание дерева

func createTree() -> Node? {
    var node: Node? = Node(value: 8, leftChild: nil, rightChild: nil)
    createNode(data: 6, node: &node)
    createNode(data: 7, node: &node)
    createNode(data: 1, node: &node)
    createNode(data: 10, node: &node)
    createNode(data: 5, node: &node)
    createNode(data: 12, node: &node)
    createNode(data: 11, node: &node)
    
    return node
}
