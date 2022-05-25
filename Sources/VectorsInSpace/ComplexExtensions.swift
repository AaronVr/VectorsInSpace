//
//  ComplexExtensions.swift
//  
//
//  Created by Aaron Vranken on 01/05/2022.
//

import Foundation
import Numerics

extension Complex: ExpressibleByFloatLiteral where RealType == Double {
    public init(floatLiteral value: Double) {
        self.init(value, 0)
        
    }
    
    public typealias FloatLiteralType = Double
}


extension Complex {
    var description: String { get { "\(self.real) \(self.imaginary)" } }
}
