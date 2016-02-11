//
//  UnitArithmetic.swift
//  UnitKit
//
//  Created by Bo Gosmer on 10/02/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import Foundation

// MARK: - Addition
// Left operand decides unit type and takes precedence when finding the NSDecimalNumberHandler to use
public func + <U: Unit>(left: U, right: U) -> U {
    let handler = left.decimalNumberHandler ?? right.decimalNumberHandler ?? U.sharedDecimalNumberHandler
    if handler != nil {
        return U(value: left.valueForUnitType(left.unitType).decimalNumberByAdding(right.valueForUnitType(left.unitType), withBehavior: handler), type: left.unitType)
    } else {
        return U(value: left.valueForUnitType(left.unitType).decimalNumberByAdding(right.valueForUnitType(left.unitType)), type: left.unitType)
    }
}

public func + <U: Unit>(left: U, right: Double) -> U {
    return left + U(value: right, type: left.unitType)
}

public func + <U: Unit>(left: Double, right: U) -> U {
    return right + left
}

public func + <U: Unit>(left: U, right: Int) -> U {
    return left + U(value: right, type: left.unitType)
}

public func + <U: Unit>(left: Int, right: U) -> U {
    return right + left
}

// MARK: - Subtraction
// Left operand decides unit type and takes precedence when finding the NSDecimalNumberHandler to use
public func - <U: Unit>(left: U, right: U) -> U {
    let handler = left.decimalNumberHandler ?? right.decimalNumberHandler ?? U.sharedDecimalNumberHandler
    if handler != nil {
        return U(value: left.valueForUnitType(left.unitType).decimalNumberBySubtracting(right.valueForUnitType(left.unitType), withBehavior: handler), type: left.unitType)
    } else {
        return U(value: left.valueForUnitType(left.unitType).decimalNumberBySubtracting(right.valueForUnitType(left.unitType)), type: left.unitType)
    }
}

public func - <U: Unit>(left: U, right: Double) -> U {
    return left - U(value: right, type: left.unitType)
}

public func - <U: Unit>(left: Double, right: U) -> U {
    return U(value: left, type: right.unitType) - right
}

public func - <U: Unit>(left: U, right: Int) -> U {
    return left - Double(right)
}

public func - <U: Unit>(left: Int, right: U) -> U {
    return Double(left) - right
}

// MARK: - Multiplication
public func * <U: Unit>(left: U, right: Double) -> U {
    let handler = left.decimalNumberHandler ?? U.sharedDecimalNumberHandler
    if handler != nil {
        return U(value: left.valueForUnitType(left.unitType).decimalNumberByMultiplyingBy(NSDecimalNumber.double(right), withBehavior: handler), type: left.unitType)
    } else {
        return U(value: left.valueForUnitType(left.unitType).decimalNumberByMultiplyingBy(NSDecimalNumber.double(right)), type: left.unitType)
    }
}

public func * <U: Unit>(left: Double, right: U) -> U {
    return right * left
}

public func * <U: Unit>(left: U, right: Int) -> U {
    return left * Double(right)
}

public func * <U: Unit>(left: Int, right: U) -> U {
    return Double(left) * right
}

// MARK: - Divition
public func / <U: Unit>(left: U, right: Double) -> U {
    let handler = left.decimalNumberHandler ?? U.sharedDecimalNumberHandler
    if handler != nil {
        return U(value: left.valueForUnitType(left.unitType).decimalNumberByDividingBy(NSDecimalNumber.double(right), withBehavior: handler), type: left.unitType)
    } else {
        return U(value: left.valueForUnitType(left.unitType).decimalNumberByDividingBy(NSDecimalNumber.double(right)), type: left.unitType)
    }
}

public func / <U: Unit>(left: Double, right: U) -> U {
    let handler = right.decimalNumberHandler ?? U.sharedDecimalNumberHandler
    if handler != nil {
        return U(value: NSDecimalNumber.double(left).decimalNumberByDividingBy(right.valueForUnitType(right.unitType), withBehavior: handler), type: right.unitType)
    } else {
        return U(value: NSDecimalNumber.double(left).decimalNumberByDividingBy(right.valueForUnitType(right.unitType)), type: right.unitType)
    }
}

public func / <U: Unit>(left: U, right: Int) -> U {
    return left / Double(right)
}

public func / <U: Unit>(left: Int, right: U) -> U {
    return Double(left) / right
}