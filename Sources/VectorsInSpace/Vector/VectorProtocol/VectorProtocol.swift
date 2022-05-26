//
//  VectorProtocol.swift
//
//
//  Created by Aaron Vranken on 07/04/2022.
//

import Foundation
import Numerics

public protocol VectorProtocol: Collection, CustomStringConvertible {
    var length: Int { get }

    subscript(_ at: Int) -> Element { get }
}

public extension VectorProtocol {
    var elements: [Element] { get { (0..<length).map { self[$0] } } }
}

public extension VectorProtocol {
    var description: String {
        get {
            (0..<length).map { self[$0] }.description
        }
    }
}
