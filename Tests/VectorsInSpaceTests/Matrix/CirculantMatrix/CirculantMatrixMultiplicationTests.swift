//
//  CirculantMatrixMultiplicationTests.swift
//  
//
//  Created by Aaron Vranken on 25/05/2022.
//

import XCTest
@testable import VectorsInSpace

class CirculantMatrixMultiplicationTests: XCTestCase {
    func testPerformanceExample() throws {
        let A = CirculantMatrix<Double>(Array((0..<100).map {Double($0)}))
        let B = CirculantMatrix<Double>(Array((0..<100).map {Double($0)}))
        
        self.measure {
            for _ in 0..<10000 {
                let _ = A * B
            }
        }
    }

}
