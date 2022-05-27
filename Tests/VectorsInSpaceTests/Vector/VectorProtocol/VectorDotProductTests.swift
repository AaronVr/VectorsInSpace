//
//  VectorDotProductTests.swift
//  
//
//  Created by Aaron Vranken on 10/04/2022.
//

import XCTest
import Numerics

import VectorsInSpace

class VectorDotProductTests: XCTestCase {
    func testDotProductSimpleReal() throws {
        let v: Vector = [1,  3, -5]
        let w: Vector = [4, -2, -1]
        
        XCTAssertEqual(3.0, v * w)
    }
    
    func testDotProductLargeReal() throws {
        let v = Vector(((0..<64).map { Double($0) }))
        let w = Vector(((0..<64).map { Double($0) }))
        
        XCTAssertEqual(85344.0, v * w)
    }
    
    func testDotProductSimpleComplex() throws {
        let v: Vector = [2 + 1.i, 0, 4 - 5.i]
        let w: Vector = [1 + 1.i, 2 + 1.i, 0]
        
        XCTAssertEqual(1 + 3.i, v * w)
    }
    
    func testDotProductPerformance() throws {
        let v = Vector(((0..<64).map { Double($0) }))
        let w = Vector(((0..<64).map { Double($0) }))
        
        measure {
            for _ in 0..<10000 {
                let _ = v * w
            }
        }
    }
}
