//
//  RealExtensions.swift
//  
//
//  Created by Aaron Vranken on 10/04/2022.
//

import Foundation
import Numerics

public extension Real {
    var i: Complex<Self> { get { Complex(0, self) } }
}
