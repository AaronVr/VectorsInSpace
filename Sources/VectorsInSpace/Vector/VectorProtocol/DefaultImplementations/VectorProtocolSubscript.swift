//
//  VectorProtocolSubscript.swift
//  
//
//  Created by Aaron Vranken on 10/05/2022.
//

import Foundation

public extension VectorProtocol {
    @inlinable
    var elements: [Element] { get { (0..<length).map { self[$0] } } }
}
