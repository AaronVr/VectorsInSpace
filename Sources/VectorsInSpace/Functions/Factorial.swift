//
//  Factorial.swift
//  
//
//  Created by Aaron Vranken on 25/05/2022.
//

import Foundation

@usableFromInline
internal var factorialCache: ContiguousArray<Int> = [1, 1]

@inlinable
internal func factorial(_ n: Int) -> Int {
    if n < factorialCache.count {
        return factorialCache[n]
    }
    
    let result = factorial(n-1) * n
    factorialCache.append(result)
    
    return result
}
