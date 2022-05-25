//
//  VectorEqualityTests.swift
//  
//
//  Created by Aaron Vranken on 10/04/2022.
//

import XCTest
@testable import VectorsInSpace

class VectorEqualityTests: XCTestCase {
    func testSelfEquality() throws {
        let v: Vector = [1, 2, 3]
        XCTAssertTrue(v == v)
        
        let w: Vector = [4, 5, 6]
        XCTAssertTrue(w == w)
        
        let u: Vector = [-1, -2, -3]
        XCTAssertTrue(u == u)
    }
    
    func testNotEqual() throws {
        let v: Vector = [1, 2, 3]
        let w: Vector = [4, 5, 6]
        XCTAssertFalse(v == w)
    }
}
