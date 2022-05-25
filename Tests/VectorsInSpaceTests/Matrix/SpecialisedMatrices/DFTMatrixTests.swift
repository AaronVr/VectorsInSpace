//
//  DFTMatrixTests.swift
//  
//
//  Created by Aaron Vranken on 23/05/2022.
//

import XCTest
import Numerics
@testable import VectorsInSpace

class DFTMatrices: XCTestCase {

    public func testDFTMatrix1() throws {
        let DFTMatrix1: Matrix<Complex<Double>> = Matrix.DFT(1)
        let DFTMatrix1Valid: Matrix<Complex<Double>> = [[1]]
        
        XCTAssertEqual(DFTMatrix1, DFTMatrix1Valid)
    }

    public func testDFTMatrix2() throws {
        let omega: Complex<Double> = Complex.exp((Complex(2 * Double.pi) * 1.i)/Complex(2))
        let DFTMatrix2: Matrix<Complex<Double>> = Matrix.DFT(2)
        let DFTMatrix2Valid: Matrix<Complex<Double>> = [[Complex(0.5*sqrt(2)), Complex(0.5*sqrt(2)) ],
                                                        [Complex(0.5*sqrt(2)), Complex(-0.5*sqrt(2))]]
        
        approximatelyEquals(DFTMatrix2, DFTMatrix2Valid)
    }
    
    public func testDFTMatrix3() throws {
        let omega: Complex<Double> = Complex.exp((Complex(2 * Double.pi) * 1.i)/Complex(3))
        let DFTMatrix3: Matrix<Complex<Double>> = Matrix.DFT(3)
        let DFTMatrix3Valid: Matrix<Complex<Double>> = [[Complex(1/sqrt(3)), Complex(1/sqrt(3)), Complex(1/sqrt(3)) ],
                                                        [Complex(1/sqrt(3)), -(0.16666666666666666 - 0.28867513459481287.i)*Complex(sqrt(3)), -(0.16666666666666666 + 0.28867513459481287.i)*Complex(sqrt(3))],
                                                        [Complex(1/sqrt(3)), -(0.16666666666666666 + 0.28867513459481287.i)*Complex(sqrt(3)), -(0.16666666666666666 - 0.28867513459481287.i)*Complex(sqrt(3))]]
                
        approximatelyEquals(DFTMatrix3, DFTMatrix3Valid)
    }
    
//    public func testDFTMatrix5() throws {
//        let DFTMatrix5: Matrix<Complex<Double>> = Matrix.DFT(5)
//        let DFTMatrix5Valid: Matrix<Complex<Double>> = [[1.0, 1.0, 1.0, 1.0, 1.0],
//                                                        [1.0, 0.30901699437494745 - 0.9510565162951535.i, -0.8090169943749475 - 0.5877852522924731.i, -0.8090169943749475 + 0.5877852522924731.i, 0.30901699437494745 + 0.9510565162951535.i],
//                                                        [1.0, -0.8090169943749475 - 0.5877852522924731.i, 0.30901699437494745 + 0.9510565162951535.i, 0.30901699437494745 - 0.9510565162951535.i, -0.8090169943749475 + 0.5877852522924731.i],
//                                                        [1.0, -0.8090169943749475 + 0.5877852522924731.i, 0.30901699437494745 - 0.9510565162951535.i, 0.30901699437494745 + 0.9510565162951535.i, -0.8090169943749475 - 0.5877852522924731.i],
//                                                        [1.0, 0.30901699437494745 + 0.9510565162951535.i, -0.8090169943749475 + 0.5877852522924731.i, -0.8090169943749475 - 0.5877852522924731.i, 0.30901699437494745 - 0.9510565162951535.i]]
//        let DFTMatrix5ValidScaled = 1/Complex<Double>.sqrt(5) * DFTMatrix5Valid
//                
//        approximatelyEquals(DFTMatrix5, DFTMatrix5ValidScaled)
//    }
//    
    public func approximatelyEquals(_ matrix1: Matrix<Complex<Double>>, _ matrix2: Matrix<Complex<Double>>) {
        XCTAssertEqual(matrix1.rowCount, matrix2.rowCount)
        XCTAssertEqual(matrix1.columnCount, matrix2.columnCount)
        
        for i in 0..<matrix1.rowCount {
            for j in 0..<matrix2.columnCount {
                XCTAssertTrue(matrix1[i, j].isApproximatelyEqual(to: matrix2[i, j], absoluteTolerance: pow(10, -13)),
                              "Failed at: \(i), \(j), matrix1: \(matrix1[i,j]), matrix2: \(matrix2[i,j])")
            }
        }
    }
}
