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
        for i in 0..<30 {
            let _ = factorial(i)
        }
//        let n = factorial(10)
//        print(n)
    }
}
