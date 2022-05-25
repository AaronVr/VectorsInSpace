//
//  MidpointConnectionMatrix.swift
//  
//
//  Created by Aaron Vranken on 24/05/2022.
//

import Foundation

func MidpointConnectionMatrix(amountOfPoints n: Int, iterations m: Int) -> CirculantMatrix<Double> {
    var vector = Vector<Double>.zero(n)
    for k in 0...m {
        vector[(m-k) %% n] += Double(choose(m, k))*Double.pow(0.5, m)
    }
    
    return CirculantMatrix(vector)
}
