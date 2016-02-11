//
//  MassUnit.swift
//  UnitKit
//
//  Created by Bo Gosmer on 06/02/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import Foundation

public struct MassUnit: _Unit {

    // MARK: - Public properties
    
    public static var sharedDecimalNumberHandler: NSDecimalNumberHandler?
    public var decimalNumberHandler: NSDecimalNumberHandler?
    
    public let unitType: MassUnitType
    public private(set) var baseUnitTypeValue: NSDecimal = NSDecimalNumber.double(0).decimalValue
    
    public var milligramValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(MassUnitType.Milligram)
    }
    
    public var gramValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(MassUnitType.Gram)
    }
    
    public var kiloValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(MassUnitType.Kilo)
    }
    
    public var tonneValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(MassUnitType.Tonne)
    }
    
    public var grainValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(MassUnitType.Grain)
    }
    
    public var dramValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(MassUnitType.Dram)
    }
    
    public var ounceValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(MassUnitType.Ounce)
    }
    
    public var poundValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(MassUnitType.Pound)
    }
    
    public var stoneValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(MassUnitType.Stone)
    }
    
    public var quarterValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(MassUnitType.Quarter)
    }
    
    public var longHundredweightValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(MassUnitType.LongHundredweight)
    }
    
    public var longTonValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(MassUnitType.LongTon)
    }
    
    public var shortHundredweightValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(MassUnitType.ShortHundredweight)
    }
    
    public var shortTonValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(MassUnitType.ShortTon)
    }
    
    // MARK: - Lifecycle
    
    public init(value: NSDecimalNumber, type: MassUnitType) {
        self.unitType = type
        self.baseUnitTypeValue = convertToBaseUnitType(value, fromType: type).decimalValue
    }
    
    public init(value: Double, type: MassUnitType) {
        self.init(value: NSDecimalNumber.double(value), type: type)
    }
    
    public init(value: Int, type: MassUnitType) {
        self.init(value: NSDecimalNumber.integer(value), type: type)
    }
    
    // MARK: - Public functions
    
    public func valueForUnitType(type: MassUnitType) -> NSDecimalNumber {
        switch type {
        case .Milligram:
            return milligramValue
        case .Gram:
            return gramValue
        case .Kilo:
            return kiloValue
        case .Tonne:
            return tonneValue
        case .Grain:
            return grainValue
        case .Dram:
            return dramValue
        case .Ounce:
            return ounceValue
        case .Pound:
            return poundValue
        case .Stone:
            return stoneValue
        case .Quarter:
            return quarterValue
        case .LongHundredweight:
            return longHundredweightValue
        case .LongTon:
            return longTonValue
        case .ShortHundredweight:
            return shortHundredweightValue
        case .ShortTon:
            return shortTonValue
        }
    }
    
}

// MARK: - Double extenstion

public extension Double {
    
    public func milligrams() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Milligram)
    }
    
    public func grams() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Gram)
    }
    
    public func kilos() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Kilo)
    }
    
    public func tonnes() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Tonne)
    }
    
    public func grains() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Grain)
    }
    
    public func drams() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Dram)
    }
    
    public func stones() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Stone)
    }
    
    public func quarters() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Quarter)
    }
    
    public func ounces() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Ounce)
    }
    
    public func pounds() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Pound)
    }
    
    public func longHundredweights() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.LongHundredweight)
    }
    
    public func longTons() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.LongTon)
    }
    
    public func shortHundredweights() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.ShortHundredweight)
    }
    
    public func shortTons() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.ShortTon)
    }
    
}

// MARK: - Iny extenstion

public extension Int {
    
    public func milligrams() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Milligram)
    }
    
    public func grams() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Gram)
    }
    
    public func kilos() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Kilo)
    }
    
    public func tonnes() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Tonne)
    }
    
    public func grains() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Grain)
    }
    
    public func drams() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Dram)
    }
    
    public func stones() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Stone)
    }
    
    public func quarters() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Quarter)
    }
    
    public func ounces() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Ounce)
    }
    
    public func pounds() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Pound)
    }
    
    public func longHundredweights() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.LongHundredweight)
    }
    
    public func longTons() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.LongTon)
    }
    
    public func shortHundreweights() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.ShortHundredweight)
    }
    
    public func shortTons() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.ShortTon)
    }
    
}
