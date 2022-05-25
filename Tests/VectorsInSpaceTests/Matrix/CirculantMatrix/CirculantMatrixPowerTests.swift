//
//  CirculantMatrixPowerTests.swift
//  
//
//  Created by Aaron Vranken on 23/05/2022.
//

import XCTest
import Numerics
@testable import VectorsInSpace

class CirculantMatrixPowerTests: XCTestCase {
    func testSquared() throws {
        let A = CirculantMatrix<Double>([1, 2, 3, 4, 5])
        
        print(A**2)
    }
}
