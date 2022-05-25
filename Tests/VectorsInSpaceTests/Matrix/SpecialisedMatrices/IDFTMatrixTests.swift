//
//  IDFTMatrixTests.swift
//  
//
//  Created by Aaron Vranken on 23/05/2022.
//

import XCTest
import Numerics
@testable import VectorsInSpace

class IDFTMatrices: XCTestCase {
    // TODO: More tests

    func testIDFTTimesDFTEqualsIdentity() throws {
        let DFT = Matrix<Complex<Double>>.DFT(8)
        let IDFT = Matrix<Complex<Double>>.IDFT(8)
        
        approximatelyEquals(DFT * IDFT, Matrix.Identity(8))
    }
    
    public func approximatelyEquals(_ matrix1: Matrix<Complex<Double>>, _ matrix2: Matrix<Complex<Double>>) {
        XCTAssertEqual(matrix1.rowCount, matrix2.rowCount)
        XCTAssertEqual(matrix1.columnCount, matrix2.columnCount)
        
        for i in 0..<matrix1.rowCount {
            for j in 0..<matrix2.columnCount {
                XCTAssertTrue(
                    matrix1[i, j].isApproximatelyEqual(to: matrix2[i, j], absoluteTolerance: pow(10, -14)),
                    "Failed at: \(i), \(j), matrix1: \(matrix1[i,j]), matrix2: \(matrix2[i,j])")
            }
        }
    }

}
