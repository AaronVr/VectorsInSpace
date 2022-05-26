//
//  Vector.swift
//  
//
//  Created by Aaron Vranken on 07/04/2022.
//

import Foundation
import Numerics

public struct Vector<Element>: VectorProtocol {
    @usableFromInline
    internal var _elements: ContiguousArray<Element>
    
    @inlinable
    public var length: Int { get { _elements.count } }
    
    @inlinable
    public init(_ elements: [Element]) {
        self._elements = ContiguousArray(elements)
    }
    
    @inlinable
    init(repeating: Element, count: Int) {
        self._elements = ContiguousArray(repeating: repeating, count: count)
    }
    
    @inlinable
    public subscript(position: Int) -> Element {
        get { _elements[position] }
        set { _elements[position] = newValue }
    }
}

extension Vector: Equatable where Element: Equatable {}
