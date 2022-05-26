//
//  MatrixExpressibleByArrayLiteral.swift
//  
//
//  Created by Aaron Vranken on 25/05/2022.
//

import Foundation
import RealModule

extension Matrix: ExpressibleByArrayLiteral where Element: AlgebraicField {
    public init(arrayLiteral elements: Array<Element>...) {
        self.init(elements)
    }
}
