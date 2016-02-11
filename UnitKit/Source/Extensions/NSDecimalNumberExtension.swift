//
//  File.swift
//  UnitKit
//
//  Created by Bo Gosmer on 10/02/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import Foundation


internal extension NSDecimalNumber {

    // These static methods are created to avoid weird comparison results with NSDecimalNumber since at the time of writing NSDecimalNumber.double(1.001) == NSDecimalNumber(decimal: NSNumber(double: 1.001).decimalValue)
    // evaluates to false
    static func double(double: Double) -> NSDecimalNumber {
        return NSDecimalNumber(decimal: NSNumber(double: double).decimalValue)
    }
    
    static func integer(integer: Int) -> NSDecimalNumber {
        return NSDecimalNumber(decimal: NSNumber(integer: integer).decimalValue)
    }
    
    var absoluteValue: NSDecimalNumber {
        if compare(NSDecimalNumber.zero()) == .OrderedAscending {
            return decimalNumberByMultiplyingBy(NSDecimalNumber(mantissa: 1, exponent: 0, isNegative: true))
        } else {
            return self
        }
    }
}