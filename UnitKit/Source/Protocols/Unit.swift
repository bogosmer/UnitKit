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
    init(value: Int, type: T)
    
    func valueForUnitType(unitType: T) -> NSDecimalNumber
    
    func localizedNameOfUnitType(locale: NSLocale?) -> String
    func localizedAbbreviationOfUnitType(locale: NSLocale?) -> String
}

public extension Unit {
    
    public var description: String {
        return "\(valueForUnitType(unitType)) \(localizedNameOfUnitType(NSLocale(localeIdentifier: "en")))"
    }
    
    func localizedNameOfUnitType(locale: NSLocale?) -> String {
        if NSDecimalNumber.one().compare(valueForUnitType(unitType).absoluteValue) == .OrderedAscending {
            return Localize.localize(String(self.dynamicType) + ".name.plural." + unitType.description, locale: locale)
        } else {
            return Localize.localize(String(self.dynamicType) + ".name.single." + unitType.description, locale: locale)
        }
        
    }
    
    func localizedAbbreviationOfUnitType(locale: NSLocale?) -> String {
        if NSDecimalNumber.one().compare(valueForUnitType(unitType).absoluteValue) == .OrderedAscending {
            return Localize.localize(String(self.dynamicType) + ".abbreviation.plural." + unitType.description, locale: locale)
        } else {
            return Localize.localize(String(self.dynamicType) + ".abbreviation.single." + unitType.description, locale: locale)
        }
    }
}

internal protocol _Unit: Unit {

    func convertToBaseUnitType(value: NSDecimalNumber, fromType: T) -> NSDecimalNumber
    func convertFromBaseUnitTypeTo(unitType: T) -> NSDecimalNumber
}

internal extension _Unit {

    internal func convertToBaseUnitType(value: NSDecimalNumber, fromType: T) -> NSDecimalNumber {
        let handler = decimalNumberHandler ?? self.dynamicType.sharedDecimalNumberHandler
        let result: NSDecimalNumber
        if handler != nil {
            result = value.decimalNumberByMultiplyingBy(fromType.baseUnitTypePerUnit(), withBehavior: handler)
        } else {
            result = value.decimalNumberByMultiplyingBy(fromType.baseUnitTypePerUnit())
        }
        return result
    }
    
    internal func convertFromBaseUnitTypeTo(unitType: T) -> NSDecimalNumber {
        let handler = decimalNumberHandler ?? self.dynamicType.sharedDecimalNumberHandler
        let result: NSDecimalNumber
        if handler != nil {
            result = NSDecimalNumber(decimal: baseUnitTypeValue).decimalNumberByDividingBy(unitType.baseUnitTypePerUnit(), withBehavior: handler)
        } else {
            result = NSDecimalNumber(decimal: baseUnitTypeValue).decimalNumberByDividingBy(unitType.baseUnitTypePerUnit())
        }
        return result
    }
}
