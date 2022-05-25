//
//  ArrayMatrixExtensions.swift
//  
//
//  Created by Aaron Vranken on 10/04/2022.
//

import Foundation
import Numerics

public extension Array where Element: Collection, Element.Element: AlgebraicField {
    func matrix() throws -> Matrix<Element.Element> {
        return Matrix(self)
    }
}
