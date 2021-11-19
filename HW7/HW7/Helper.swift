//
//  Helper.swift
//  HW7
//
//  Created by Ilya on 15.11.2021.
//

import Foundation

func readLine<T: LosslessStringConvertible>(as type: T.Type) -> T? {
    return readLine().flatMap(type.init(_:))
}
