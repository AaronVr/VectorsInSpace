//
//  ZeroMatrix.swift
//  
//
//  Created by Aaron Vranken on 23/05/2022.
//

import Foundation
import Numerics

public extension Matrix
where Element: AlgebraicField {
    static func zero(_ rows: Int, _ columns: Int) -> Matrix<Element> {
        return Matrix(Array(repeating: Element.zero, count: rows*columns), (rows, columns))
    }
}
