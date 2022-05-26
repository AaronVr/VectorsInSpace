//
//  VectorToMatrix.swift
//  
//
//  Created by Aaron Vranken on 25/05/2022.
//

import Foundation

public extension VectorProtocol {
    @inlinable
    func row() -> Matrix<Element> {
        Matrix(self, (1, length))
    }
    
    @inlinable
    func column() -> Matrix<Element> {
        Matrix(self, (length, 1))
    }
}
