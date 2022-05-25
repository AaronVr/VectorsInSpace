//
//  Vector.swift
//  
//
//  Created by Aaron Vranken on 07/04/2022.
//

import Foundation
import Numerics

public struct Vector<Element: AlgebraicField>: VectorProtocol, ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = Element
    
    public var elements: ContiguousArray<Element>
    @inlinable
    public var length: Int { get { elements.count } }
    
    @inlinable
    public var indices: Range<Int> { get { startIndex..<elements.count } }
    @inlinable
    public var startIndex: Int { get { 0 } }
    @inlinable
    public var endIndex: Int { get { elements.count } }
    
    @inlinable
    public init(_ elements: [Element]) {
        self.elements = ContiguousArray(elements)
    }
    
    @inlinable
    public func index(before i: Int) -> Int {
        assert(0 < i, "Index out of bounds")
        
        return i - 1
    }
    
    @inlinable
    public func index(after i: Int) -> Int {
        assert(i < endIndex, "Index out of bounds")
        
        return i + 1
    }
    
    @inlinable
    public subscript(position: Int) -> Element {
        get { elements[position] }
        set { elements[position] = newValue }
    }
}

public extension Vector {
    @inlinable
    static func zero(_ n: Int) -> Vector<Element> {
        return Vector(repeating: Element.zero, count: n)
    }
}

public extension Vector {
    @inlinable
    init(arrayLiteral elements: Element...) {
        self.elements = ContiguousArray(elements)
    }
    
    @inlinable
    init(repeating: Element, count: Int) {
        self.elements = ContiguousArray(repeating: repeating, count: count)
    }
}
