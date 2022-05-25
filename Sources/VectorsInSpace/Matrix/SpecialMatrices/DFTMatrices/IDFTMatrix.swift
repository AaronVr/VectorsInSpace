//
//  IDFTMatrix.swift
//  
//
//  Created by Aaron Vranken on 23/05/2022.
//

import Foundation

import Numerics

public extension Matrix {
    static func IDFT(_ n: Int) -> Matrix<Complex<Self.Element>>
    where Element: Real {
        Matrix<Complex<Self.Element>>.IDFT(n)
    }
    
    static func IDFT<RealType>(_ n: Int) -> Matrix<Complex<RealType>>
    where Self.Element == Complex<RealType> {
        guard n > 0 else {
            // TODO: error if dividing by 0
            fatalError()
        }
        
        let omega = Complex.exp((Complex(2 * RealType.pi) * RealType(1).i)/Complex(n))
        
        var IDFT = Matrix.zero(n, n)
        for i in 0..<n {
            for j in i..<n {
                IDFT[i, j] = 1/Complex.sqrt(Complex(n)) * Complex.pow(omega, -i*j)
                IDFT[j, i] = IDFT[i, j]
            }
        }
        
        return IDFT
    }
}
