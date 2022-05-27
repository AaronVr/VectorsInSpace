//
//  MidpointConnectionMatrix.swift
//  
//
//  Created by Aaron Vranken on 24/05/2022.
//

import Foundation

@inlinable
public func MidpointConnectionMatrix(amountOfPoints n: Int, iterations m: Int) -> CirculantMatrix<Double> {
    var vector = Vector<Double>.zero(n)
    for k in 0...m {
        vector[(m-k) %% n] += chooseDouble(m, k)*Double.pow(0.5, m)
    }
    
    return CirculantMatrix(vector)
}

@inlinable
public func connectMidpointsPolygon<M: MatrixProtocol>(_ polygon: M, iterations: Int ) -> Matrix<Double> where M.Element == Double {
    var iterations = iterations

    var midpointConnectionMatrix = MidpointConnectionMatrix(amountOfPoints: polygon.rowCount, iterations: iterations % 170)

    while iterations > 170 {
        midpointConnectionMatrix = midpointConnectionMatrix *  MidpointConnectionMatrix(amountOfPoints: polygon.rowCount, iterations: 170)
        iterations -= 170
    }

    return midpointConnectionMatrix * polygon
}
