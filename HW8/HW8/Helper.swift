//
//  Helper.swift
//  HW8
//
//  Created by Ilya on 21.11.2021.
//

import Foundation

func readLine<T: LosslessStringConvertible>(as type: T.Type) -> T? {
    return readLine().flatMap(type.init(_:))
}
