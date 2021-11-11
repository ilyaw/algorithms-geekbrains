//
//  Helper.swift
//  HW6
//
//  Created by Ilya on 08.11.2021.
//

import Foundation

func readLine<T: LosslessStringConvertible>(as type: T.Type) -> T? {
    return readLine().flatMap(type.init(_:))
}
