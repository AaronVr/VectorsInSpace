//
//  VectorDotProductTests.swift
//  
//
//  Created by Aaron Vranken on 10/04/2022.
//

import XCTest
import Numerics
@testable import VectorsInSpace

class VectorDotProductTests: XCTestCase {
    func testDotProductSimpleReal() throws {
        let v: Vector = [1,  3, -5]
        let w: Vector = [4, -2, -1]
        
        XCTAssertEqual(3.0, v * w)
    }
    
    func testDotProductSimpleComplex() throws {
        let v: Vector = [2 + 1.i, 0, 4 - 5.i]
        let w: Vector = [1 + 1.i, 2 + 1.i, 0]
        
//        let v = [2+3.i,7+3.i].vector()
//        let w = [1+2.i,2+2.i].vector()
        
//        XCTAssertEqual(28+9.i, try v*w)
        
        XCTAssertEqual(1 + 3.i, try v * w)
    }
}
