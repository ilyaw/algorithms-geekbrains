//
//  Solution1.swift
//  HW6
//
//  Created by Ilya on 11.11.2021.
//

import Foundation
import CommonCrypto


/// 1. Реализовать простейшую хэш-функцию. На вход функции подается строка, на выходе сумма кодов символов.
func solution1() {
    
    print("Введите значение для хэширования:", terminator: " ")
    
    guard let input = readLine() else {
        print("Введите значение для хэшироавния")
        return
    }
    
    print("Результат в SHA-1: \(input.sha1())")
    print("Результат в SHA-256: \(input.sha256)\n")
    
}

extension String {
    func sha1() -> String {
        let data = Data(self.utf8)
        var digest = [UInt8](repeating: 0, count:Int(CC_SHA1_DIGEST_LENGTH))
        data.withUnsafeBytes {
            _ = CC_SHA1($0.baseAddress, CC_LONG(data.count), &digest)
        }
        let hexBytes = digest.map { String(format: "%02hhx", $0) }
        return hexBytes.joined()
    }
    
    var sha256: String {
        let data = Data(self.utf8)
        let hash = data.withUnsafeBytes { (bytes: UnsafeRawBufferPointer) -> [UInt8] in
            var hash = [UInt8](repeating: 0, count: Int(CC_SHA256_DIGEST_LENGTH))
            CC_SHA256(bytes.baseAddress, CC_LONG(data.count), &hash)
            return hash
        }
        return hash.map { String(format: "%02x", $0) }.joined()
    }
}
