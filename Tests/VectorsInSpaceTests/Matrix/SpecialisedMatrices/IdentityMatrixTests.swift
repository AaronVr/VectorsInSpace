//
//  IdentityMatrixTests.swift
//  
//
//  Created by Aaron Vranken on 26/05/2022.
//

import XCTest
import VectorsInSpace

class IdentityMatrixTests: XCTestCase {
    func testIdentityMatrix() throws {
        let identity = CirculantMatrix<Double>.Identity(10)
        
        XCTAssertEqual(CirculantMatrix([1, 0, 0, 0, 0, 0, 0, 0, 0, 0]), identity)
    }
}
