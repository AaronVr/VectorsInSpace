//
//  CyclicalPool.swift
//  
//
//  Created by Aaron Vranken on 26/05/2022.
//

import Foundation
import Numerics

@inlinable
internal func generateSimulationEigenMatrix(points n: Int, radius: Double, stepSize deltaT: Double) -> DiagonalMatrix<Double> {
    assert (5 <= n)
    
    var baseVector = Vector<Double>.zero(n)
    baseVector[0] = -30
    baseVector[1] = 16
    baseVector[2] = -1
    baseVector[n-2] = -1
    baseVector[n-1] = 16
    
    let deltaX = 2.0*radius/Double(n)
    let coefficient = 1.0/12.0 * pow(deltaT, 2)/pow(deltaX, 2)
    
    let simulationMatrix = coefficient * CirculantMatrix(baseVector) - CirculantMatrix<Double>.Identity(n)
    
    return DiagonalMatrix(Vector(simulationMatrix.eigenvalues().map { 1/$0 }).toReal())
}

@inlinable
public func simulateCyclicalPool(
    baseCase: Vector<Double>,
    radius: Double = 5.0,
    stepSize deltaT: Double,
    time t: Double) -> Vector<Double> {
        assert(1 <= t/deltaT)
        
        let n = baseCase.length
        
        let simulationMatrix = generateSimulationEigenMatrix(points: n, radius: radius, stepSize: deltaT).toComplex()
        let DFT = Matrix<Double>.DFT(n)
        let IDFT = Matrix<Double>.IDFT(n)
        
        var previous2 = baseCase
        var previous1 = previous2
        var current = (DFT * (simulationMatrix * (IDFT * (previous2 - 2*previous1).toComplex()))).toReal()
        var time = deltaT
        while time < t {
            (previous2, previous1) = (previous1, current)
            current = (DFT * (simulationMatrix * (IDFT * (previous2 - 2*previous1).toComplex()))).toReal()
            time += deltaT
        }
        
        return current
}
