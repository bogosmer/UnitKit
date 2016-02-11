//
//  File.swift
//  UnitKit
//
//  Created by Bo Gosmer on 10/02/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import Foundation

// This extension is created to avoid weird comparison results with NSDecimalNumber since at the time of writing NSDecimalNumber.double(1.001) == NSDecimalNumber(decimal: NSNumber(double: 1.001).decimalValue) evaluates to false
internal extension NSDecimalNumber {
    
    static func double(double: Double) -> NSDecimalNumber {
        return NSDecimalNumber(decimal: NSNumber(double: double).decimalValue)
    }
    
    static func integer(integer: Int) -> NSDecimalNumber {
        return NSDecimalNumber(decimal: NSNumber(integer: integer).decimalValue)
    }
}