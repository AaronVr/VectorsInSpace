//
//  Choose.swift
//  
//
//  Created by Aaron Vranken on 25/05/2022.
//

import Foundation

@inlinable
internal func chooseDouble(_ n: Int, _ k: Int) -> Double {
    return factorialDouble(n)/(factorialDouble(k)*factorialDouble(n-k))
}

@inlinable
internal func choose(_ n: Int, _ k: Int) -> Int {
    return factorial(n)/(factorial(k)*factorial(n-k))
}
