//
//  ChooseTests.swift
//  
//
//  Created by Aaron Vranken on 25/05/2022.
//

import XCTest
@testable import VectorsInSpace

class ChooseTests: XCTestCase {
    func testExample() throws {
        let n = choose(10, 5)
        print(n)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
