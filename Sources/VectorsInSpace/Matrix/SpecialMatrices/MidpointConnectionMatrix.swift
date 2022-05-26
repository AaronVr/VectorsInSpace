//
//  MidpointConnectionMatrix.swift
//  
//
//  Created by Aaron Vranken on 24/05/2022.
//

import Foundation

@inlinable
func MidpointConnectionMatrix(amountOfPoints n: Int, iterations m: Int) -> CirculantMatrix<Double> {
    var vector = Vector<Double>.zero(n)
    for k in 0...m {
        vector[(m-k) %% n] += Double(choose(m, k))*Double.pow(0.5, m)
    }
    
    return CirculantMatrix(vector)
}

@inlinable
func connectMidpointsPolygon<M: MatrixProtocol>(_ polygon: M, iterations: Int ) -> Matrix<Double> where M.Element == Double {
    var iterations = iterations
    
    var midpointConnectionMatrix = MidpointConnectionMatrix(amountOfPoints: polygon.rowCount, iterations: iterations % 20)
    
    while iterations > 20 {
        midpointConnectionMatrix = midpointConnectionMatrix *  MidpointConnectionMatrix(amountOfPoints: polygon.rowCount, iterations: 20)
        iterations -= 20
    }
    
    return midpointConnectionMatrix * polygon
}
