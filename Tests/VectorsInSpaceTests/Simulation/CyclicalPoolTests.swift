//
//  CyclicalPoolTests.swift
//  
//
//  Created by Aaron Vranken on 26/05/2022.
//

import XCTest
import VectorsInSpace

class CyclicalPoolTests: XCTestCase {
    func generateSimulationValues() throws {
        let v: Vector = [1.0, 2.0, 3.0, 4.0, 5.0, 4.0, 3.0, 2.0, 1.0, 2.0, 3.0, 4.0, 5.0, 4.0, 3.0, 2.0, 1.0, 2.0, 3.0, 4.0, 5.0, 4.0, 3.0, 2.0, 1.0, 2.0, 3.0, 4.0, 5.0, 4.0, 3.0, 2.0, 1.0, 2.0, 3.0, 4.0, 5.0, 4.0, 3.0, 2.0]
        
        var results: [Vector<Double>] = [v]
        for i in 1..<200 {
            results.append(simulateCyclicalPool(baseCase: v, stepSize: 0.01, time: Double(i)/10))
        }
        
//        let x = results
//            .map { iteration in
//                "\\begin{matrix}\\begin{pmatrix} " + iteration.map { (double: Double) -> String in
//                    let string = String(double)
//                    return string.count > 7 ? String(string.dropLast(string.count - 7)) : string
//                }.joined(separator: " && ") + " \\end{pmatrix}\\end{matrix}"
//            }.joined(separator: "\\\\ \n")
        
        let x = results
            .map { iteration in
                iteration.map { (double: Double) -> String in
                    let string = String(double)
                    return string.count > 7 ? String(string.dropLast(string.count - 7)) : string
                }.joined(separator: ", ")
            }.joined(separator: "\n")
       
        print(x)
    }
}
