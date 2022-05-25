//
//  MatrixMultiplicationTests.swift
//  
//
//  Created by Aaron Vranken on 10/04/2022.
//

import XCTest
@testable import VectorsInSpace

class MatrixMultiplicationTests: XCTestCase {
    func testSimpleMatrixMultiplicationReal() throws {
        // Simple identity matrix
        let A: Matrix = [[1, 2],
                         [3, 4]]
        let B: Matrix = [[1, 0],
                         [0, 1]]
        
        XCTAssertEqual(A * B, A)
        
        // Simple column permutation
        let C: Matrix = [[0, 1],
                         [1, 0]]
        
        XCTAssertEqual(A * C, [[2, 1],
                               [4, 3]])
    }
    
    func testSimpleMatrixMultiplicationComplex() throws {
        let A: Matrix = [[1 + 2.i, 2 + 3.i],
                         [3 + 4.i, 4 + 5.i]]
        let B: Matrix = [[5 + 4.i, 3 + 2.i],
                         [4 + 3.i, 2 + 1.i]]
        
        let result: Matrix = [[32.i - 4,     16.i],
                              [    64.i, 32.i + 4]]
        
        XCTAssertEqual(A*B, result)
    }
    
    func testUnequalDimensionMatrixMultiplication() throws {
        let A: Matrix = [[1],
                         [2]]
        let B: Matrix = [[3, 4]]
        
        XCTAssertEqual(A * B, [[3, 4],
                               [6, 8]])
    }
}
