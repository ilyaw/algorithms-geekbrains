//
//  Helper.swift
//  HW2
//
//  Created by Ilya on 21.10.2021.
//

import Foundation

func readLine<T: LosslessStringConvertible>(as type: T.Type) -> T? {
  return readLine().flatMap(type.init(_:))
}
