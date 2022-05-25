//
//  CirculantMatrixPower.swift
//  
//
//  Created by Aaron Vranken on 01/05/2022.
//

import Foundation
import Numerics
import RealModule

extension CirculantMatrix {
    @inlinable
    public static func **(_ lhs: Self, _ p: Int) -> CirculantMatrix<Element>
    where Element: Real {
        let complexSelf = CirculantMatrix<Complex<Element>>(lhs.sourceVector.map { Complex($0) })
        let raisedComplexSelf = complexSelf**p
        
        return CirculantMatrix(raisedComplexSelf.sourceVector.map { $0.real })
    }
    
    @inlinable
    public static func **<T>(_ lhs: Self, _ p: Int) -> CirculantMatrix<Element>
    where Element == Complex<T> {
        let n = lhs.sourceVector.length
        let power = Element(p)
        
        var eigenvalues = lhs.eigenvalues()
        for i in 0..<n {
            eigenvalues[i] = Element.pow(eigenvalues[i], power) / Complex<T>(sqrt(T(n)))
        }
        
        let IDFT = Matrix<Element>.IDFT(n)

        let result = eigenvalues * IDFT
        
        return CirculantMatrix(result)
    }
}
