//
//  Unit.swift
//  UnitKit
//
//  Created by Bo Gosmer on 09/02/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import Foundation

public protocol Unit: CustomStringConvertible {
    typealias T: UnitType
    
    static var sharedDecimalNumberHandler: NSDecimalNumberHandler? { get set } // get segmentation fault 11 when building module if the static and instance variable have same name
    var decimalNumberHandler: NSDecimalNumberHandler? { get set } // get segmentation fault 11 when building module if the static and instance variable have same name
    
    var baseUnitTypeValue: NSDecimal { get }
    var unitType: T { get }
    
    init(value: NSDecimalNumber, type: T)
    init(value: Double, type: T)
    
    func valueForUnitType(unitType: T) -> NSDecimalNumber
    
    func convertToBaseUnitType(value: NSDecimalNumber, fromType: T) -> NSDecimalNumber
    func convertFromBaseUnitTypeTo(unitType: T) -> NSDecimalNumber
}

public extension Unit {
    
    public var description: String {
        return "\(valueForUnitType(unitType)) \(unitType.localizedName(nil))"
    }
}

public extension Unit {

    public func convertToBaseUnitType(value: NSDecimalNumber, fromType: T) -> NSDecimalNumber {
        return value.decimalNumberByDividingBy(fromType.baseUnitTypePerUnit(), withBehavior: decimalNumberHandler ?? self.dynamicType.sharedDecimalNumberHandler )
    }
    
    public func convertFromBaseUnitTypeTo(unitType: T) -> NSDecimalNumber {
        return NSDecimalNumber(decimal: baseUnitTypeValue).decimalNumberByMultiplyingBy(unitType.baseUnitTypePerUnit(), withBehavior: decimalNumberHandler ?? self.dynamicType.sharedDecimalNumberHandler )
    }
}

// MARK: - Arithmethic functions

// Left operand decides unit type and takes precedence when finding the NSDecimalNumberHandler to use
public func + <U: Unit>(left: U, right: U) -> U {
    let decimalNumberHandler = left.decimalNumberHandler ?? right.decimalNumberHandler ?? U.sharedDecimalNumberHandler
    return U(value: left.valueForUnitType(left.unitType).decimalNumberByAdding(right.valueForUnitType(left.unitType), withBehavior: decimalNumberHandler), type: left.unitType)
}

public func + <U: Unit>(left: U, right: Double) -> U {
    return left + U(value: right, type: left.unitType)
}

public func + <U: Unit>(left: Double, right: U) -> U {
    return right + left
}

// Left operand decides unit type and takes precedence when finding the NSDecimalNumberHandler to use
public func - <U: Unit>(left: U, right: U) -> U {
    let decimalNumberHandler = left.decimalNumberHandler ?? right.decimalNumberHandler ?? U.sharedDecimalNumberHandler
    return U(value: left.valueForUnitType(left.unitType).decimalNumberBySubtracting(right.valueForUnitType(left.unitType), withBehavior: decimalNumberHandler), type: left.unitType)
}

public func - <U: Unit>(left: U, right: Double) -> U {
    return left - U(value: right, type: left.unitType)
}

public func - <U: Unit>(left: Double, right: U) -> U {
    return right - left
}