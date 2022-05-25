//
//  Choose.swift
//  
//
//  Created by Aaron Vranken on 25/05/2022.
//

import Foundation

@inlinable
internal func choose(_ n: Int, _ k: Int) -> Int {
    return factorial(n)/(factorial(k)*factorial(n-k))
}
