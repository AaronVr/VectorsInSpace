//
//  VectorExpressibleByArrayLiteral.swift
//  
//
//  Created by Aaron Vranken on 25/05/2022.
//

import Foundation
import RealModule

extension Vector: ExpressibleByArrayLiteral
where Element: AlgebraicField {
    @inlinable
    public init(arrayLiteral elements: Element...) {
        self._elements = ContiguousArray(elements)
    }
}
