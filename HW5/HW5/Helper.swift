//
//  Helper.swift
//  HW5
//
//  Created by Ilya on 08.11.2021.
//

import Foundation

func readLine<T: LosslessStringConvertible>(as type: T.Type) -> T? {
    return readLine().flatMap(type.init(_:))
}

extension Dictionary where Value: Equatable {
    func findKey(forValue val: Value) -> Key? {
        return first(where: { $1 == val })?.key
    }
}
