//
//  Solution2.swift
//  HW6
//
//  Created by Ilya on 14.11.2021.
//

import Foundation

//2. Переписать программу, реализующую двоичное дерево поиска.
//а) Добавить в него обход дерева различными способами;
//б) Реализовать поиск в двоичном дереве поиска;

func solution2() {
    
}



/// б) Реализовать поиск в двоичном дереве поиска;
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

