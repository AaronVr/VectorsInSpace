//
//  CirculantMatrixSolve.swift
//  
//
//  Created by Aaron Vranken on 24/05/2022.
//

import Foundation
import Numerics

public extension CirculantMatrix {
    func solve<V: VectorProtocol>(_ vector: V) -> Vector<Complex<Element>>
    where Element: Real, V.Element == Element {
        assert(rowCount == vector.length, "Incompatible dimensions solve linear system")
        
        let DFT = Matrix<Element>.DFT(rowCount)
        let IDFT = Matrix<Element>.IDFT(rowCount)
        let inverseDiagonalisedMatrix = DiagonalMatrix(eigenvalues().map { 1/$0 } )
        
        return DFT * (inverseDiagonalisedMatrix * (IDFT * vector))
    }
}
