//
//  FactorialTests.swift
//  
//
//  Created by Aaron Vranken on 25/05/2022.
//

import XCTest
@testable import VectorsInSpace

class FactorialTests: XCTestCase {
    func testFactorial() throws {
        let n = factorial(10)
        print(n)
    }
}
