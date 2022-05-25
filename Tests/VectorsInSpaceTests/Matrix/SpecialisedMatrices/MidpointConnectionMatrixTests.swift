//
//  MidpointConnectionMatrixTests.swift
//  
//
//  Created by Aaron Vranken on 25/05/2022.
//

import XCTest
@testable import VectorsInSpace

class MidpointConnectionMatrixTests: XCTestCase {
    func test5Points5Iterations() throws {
        let matrix = MidpointConnectionMatrix(amountOfPoints: 5, iterations: 5)
        
        let solution = CirculantMatrix<Double>([
            1.0/16,
            5.0/32,
            5.0/16,
            5.0/16,
            5.0/32])
        
        XCTAssertEqual(matrix, solution)
    }
    
    func test5Points10Iterations() throws {
        let matrix = MidpointConnectionMatrix(amountOfPoints: 5, iterations: 10)
        
        let solution = CirculantMatrix<Double>([
            127.0/512,
            55.0/256,
            165.0/1024,
            165.0/1024,
            55.0/256])
        
        XCTAssertEqual(matrix, solution)
    }
    
    func test5Points20Iterations() throws {
        let matrix = MidpointConnectionMatrix(amountOfPoints: 5, iterations: 20)
        
        let solution = CirculantMatrix<Double>([
            107883.0/524288,
            211585.0/1048576,
            51205.0/262144,
            51205.0/262144,
            211585.0/1048576])
        
        XCTAssertEqual(matrix, solution)
    }
}
