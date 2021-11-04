//
//  Helper.swift
//  HW4
//
//  Created by Ilya on 01.11.2021.
//

import Foundation

func readLine<T: LosslessStringConvertible>(as type: T.Type) -> T? {
  return readLine().flatMap(type.init(_:))
}

extension RangeExpression where Bound: FixedWidthInteger {
    func randomElements(_ n: Int) -> [Bound] {
        precondition(n > 0)
        switch self {
        case let range as Range<Bound>: return (0..<n).map { _ in .random(in: range) }
        case let range as ClosedRange<Bound>: return (0..<n).map { _ in .random(in: range) }
        default: return []
        }
    }
}
