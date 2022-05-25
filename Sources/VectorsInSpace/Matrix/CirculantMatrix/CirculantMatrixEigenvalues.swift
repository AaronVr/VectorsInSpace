//
//  CirculantMatrixEigenvalues.swift
//  
//
//  Created by Aaron Vranken on 23/05/2022.
//

import Foundation
import Numerics

public extension CirculantMatrix {
    @inlinable
    func eigenvalues<RealType>() -> Vector<Complex<RealType>>
    where Element == Complex<RealType> {
        let n = self.rowCount
        let omega = Complex.exp((Complex(2 * RealType.pi) * RealType(1).i)/Complex(n))
        
        var eigenvalues: Vector<Complex<RealType>> = Vector.zero(n)
        
        for j in 0..<n {
            var lambda = Element.zero
            for k in 0..<n {
                lambda += self.sourceVector[k] * Complex.pow(omega, k * j)
            }
            eigenvalues[j] = lambda
        }
        
        return eigenvalues
    }
    
    @inlinable
    func eigenvalues() -> Vector<Complex<Element>>
    where Element: Real {
        let complexSelf = CirculantMatrix<Complex<Element>>(self.sourceVector.map { Complex($0) })
        
        return complexSelf.eigenvalues()
    }
}
