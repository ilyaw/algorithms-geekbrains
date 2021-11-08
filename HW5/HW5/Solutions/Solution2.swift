//
//  Solution2.swift
//  HW5
//
//  Created by Ilya on 08.11.2021.
//

import Foundation

/*
 Написать программу, которая определяет, является ли введенная скобочная последовательность правильной. Примеры правильных скобочных выражений: (), ([])(), {}(),
 ([{}]), неправильных — )(, ())({), (, ])}), ([(]) для скобок [, (, {.
 */
func solution2() {
    print("Введите скобочное выражение: ", terminator: "")
    
    guard let bracketExpression = readLine() else {
        return
    }
    
    let resultValid = checkValidBracketExpression(bracketExpression)
    print("Последовательность \(resultValid ? "валидна" : "невалидна")")
}

fileprivate func checkValidBracketExpression(_ bracketExpression: String) -> Bool {
    
    var stack = Stack<Character>()
    let dict: [Character: Character] = [ "(":")", "{":"}", "[":"]" ]
    
    for char in bracketExpression {
        
        let bracker = dict[char]
        
        if bracker != nil {
            stack.push(char)
        } else if stack.pop() == dict.findKey(forValue: char) {
            continue
        } else {
            return false
        }
    }
    
    return stack.pop() == nil
}
