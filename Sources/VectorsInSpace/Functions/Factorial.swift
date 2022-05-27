//
//  Factorial.swift
//  
//
//  Created by Aaron Vranken on 25/05/2022.
//

import Foundation

@usableFromInline
internal var factorialCacheDouble: ContiguousArray<Double> = [1, 1]

@usableFromInline
internal var factorialCacheInt: ContiguousArray<Int> = [1, 1]

@inlinable
internal func factorialDouble(_ n: Int) -> Double {
    if n < factorialCacheDouble.count {
        return factorialCacheDouble[n]
    }
    
    let result = factorialDouble(n-1) * Double(n)
    factorialCacheDouble.append(result)
    
    return result
}

@inlinable
internal func factorial(_ n: Int) -> Int {
    if n < factorialCacheInt.count {
        return factorialCacheInt[n]
    }
    
    let result = factorial(n-1) * n
    factorialCacheInt.append(result)
    
    return result
}
