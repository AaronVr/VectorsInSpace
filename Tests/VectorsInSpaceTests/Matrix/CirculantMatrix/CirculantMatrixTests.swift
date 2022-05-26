//
//  CirculantMatrixTests.swift
//  
//
//  Created by Aaron Vranken on 28/04/2022.
//

import XCTest
@testable import VectorsInSpace
import Numerics

class CirculantMatrixTests: XCTestCase {
    func testSimpleCirculantMultiplication() throws {
        let v: Vector<Double> = [1.0, 2.0, 3.0]
        let A = CirculantMatrix(v)
        let At: Matrix = [[1, 2, 3],
                          [3, 1, 2],
                          [2, 3, 1]]
        
        let w: Vector<Double> = [3, 4, 5]
        let B = CirculantMatrix(w)
        let Bt: Matrix = [[3, 4, 5],
                          [5, 3, 4],
                          [4, 5, 3]]

        XCTAssertEqual(A * B, At * Bt)
    }
    
    func testCirculantPerformanceSpecialisedPower() {
        let A = CirculantMatrix([1.0/2, 1.0/2, 0, 0, 0, 0, 0, 0, 0])

        measure {
            for _ in 0..<100 {
                let _ = A**10
            }
        }
    }
    
    func testPerformanceCirculantMultiplication() {
        let A = CirculantMatrix([1.0/2, 1.0/2, 0, 0, 0, 0, 0, 0, 0])
        
        measure {
            for _ in 0..<100 {
                let _ =  A*A*A*A*A*A*A*A*A*A
            }
        }
    }
    
    func testCirculantMatrixIndexing() {
        let A = CirculantMatrix([1.0/2, 1.0/2, 0, 0, 0, 0, 0, 0, 0])
        
        measure {
            for _ in 0..<100 {
                let _ =  A*A*A*A*A*A*A*A*A*A
            }
        }
    }
//
//    func testSimpleCirculantMultiplicationMachineEpsilon() throws {
//        let v: Vector = [Double.leastNonzeroMagnitude, 1, 1]
//        let A = CirculantMatrix(v)
////        let At: Matrix = [[Double., 2, 3],
////                          [3, 1, 2],
////                          [2, 3, 1]]
//        
//        let w: Vector = [Double.leastNonzeroMagnitude, 4, 5]
//        let B = CirculantMatrix(w)
////        let Bt: Matrix = [[, 4, 5],
////                          [5, 3, 4],
////                          [4, 5, 3]]
//        
//        let result1 = A * B
//        print(result1)
////        let result2 = At * Bt
//        print(Double.leastNonzeroMagnitude)
////        print(result2)
////
//        print(A * v)
//        print(v * A)
//        
////        XCTAssertEqual(A * B, At * Bt)
//    }
//    
//    func testPerformanceExample() throws {
//        let AElements = (1..<1000).map {  Float($0) }
//        let BElements = (1001..<2000).map { Float($0) }
//        
//        let v: Vector = Vector(AElements)
//        let A = CirculantMatrix(v)
//        
//        let w: Vector = Vector(BElements)
//        let B = CirculantMatrix(w)
//        
//        self.measure {
//            A * B
//        }
//    }

}
