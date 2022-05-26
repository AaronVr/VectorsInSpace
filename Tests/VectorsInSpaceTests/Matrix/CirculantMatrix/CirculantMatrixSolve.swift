//
//  CirculantMatrixSolve.swift
//  
//
//  Created by Aaron Vranken on 24/05/2022.
//

import XCTest
@testable import VectorsInSpace
import Numerics

class CirculantMatrixSolve: XCTestCase {
    func testSolveRealSimple() throws {
        let A = CirculantMatrix([1.0, 2.0, 3.0, 4.0, 5.0])
        let b: Vector = [1, 2, 3, 4, 5]
        
        let result = A.solve(b)
        let solution: Vector<Complex<Double>> = [0.4, 0.4, 0.4, 0.4, -0.6]
        
        for i in 0..<result.length {
            XCTAssertTrue(result[i].isApproximatelyEqual(to: solution[i]))
        }
    }

    func testSolveComplexSimple() throws {
//        let A = CirculantMatrix([1 + 1.i, 2 + 3.i, 3 - 8.i, 4 - 2.i, 5 + 8.i])
//        let b: Vector = [1.i, 2 + 3.i, 3 + 4.i, 4, 5]
//        print(A.solve(b))
        
        XCTAssertTrue(false)
    }

}
