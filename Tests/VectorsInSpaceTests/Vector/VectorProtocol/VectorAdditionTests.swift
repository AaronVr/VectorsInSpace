//
//  VectorAdditionTests.swift
//  
//
//  Created by Aaron Vranken on 10/04/2022.
//

import XCTest
import Numerics
import VectorsInSpace

class VectorAdditionTests: XCTestCase {
    func testSimplePositiveReal() throws {
        let v: Vector = [1, 2, 3]
        let w: Vector = [4, 5, 6]
        
        XCTAssertEqual(v + w, [5, 7, 9])
    }
    
    func testSimpleNegativeReal() throws {
        let v: Vector = [-1, -2, -3]
        let w: Vector = [-4, -5, -6]
        
        XCTAssertEqual(v + w, [-5, -7, -9])
    }

    func testSimpleComplex() throws {
        let v: Vector = [1 + 1.i, 2 + 2.i, 3 + 3.i]
        let w: Vector = [4 + 4.i, 5 + 5.i, 6 + 6.i]
        
        XCTAssertEqual(v + w, [5 + 5.i, 7 + 7.i, 9 + 9.i])
    }
}
