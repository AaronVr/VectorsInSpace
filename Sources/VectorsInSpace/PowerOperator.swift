//
//  PowerOperator.swift
//  
//
//  Created by Aaron Vranken on 23/05/2022.
//

import Foundation

precedencegroup PowerPrecedence {
    higherThan: MultiplicationPrecedence
    lowerThan: BitwiseShiftPrecedence
    associativity: left
    assignment: true
}

infix operator ** : PowerPrecedence
