//
//  MassUnit.swift
//  UnitKit
//
//  Created by Bo Gosmer on 06/02/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import Foundation

public struct MassUnit: Unit {

    // MARK: - Public properties
    
    public static var sharedDecimalNumberHandler: NSDecimalNumberHandler?
    public var decimalNumberHandler: NSDecimalNumberHandler?
    
    public let unitType: MassUnitType
    public var baseUnitTypeValue: NSDecimal = NSDecimalNumber(double: 0).decimalValue
    
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
        return convertFromBaseUnitTypeTo(MassUnitType.Gram)
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
    
    // MARK: - CustomStringConvertible
    
    public var description: String {
        return "\(valueForUnitType(unitType)) \(unitType.localizedName())"
    }
    
    // MARK: - Lifecycle
    
    public init(value: NSDecimalNumber, type: MassUnitType) {
        self.unitType = type
        self.baseUnitTypeValue = convertToBaseUnitType(value, fromType: type).decimalValue
    }
    
    public init(value: Double, type: MassUnitType) {
        self.init(value: NSDecimalNumber(double: value), type: type)
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

extension Double {
    
    public func milligram() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Milligram)
    }
    
    public func gram() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Gram)
    }
    
    public func kilo() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Kilo)
    }
    
    public func tonne() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Tonne)
    }
    
    public func grain() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Grain)
    }
    
    public func dram() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Dram)
    }
    
    public func stone() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Stone)
    }
    
    public func quarter() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Quarter)
    }
    
    public func ounce() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Ounce)
    }
    
    public func pound() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.Pound)
    }
    
    public func longHundredweight() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.LongHundredweight)
    }
    
    public func longTon() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.LongTon)
    }
    
    public func shortHundreweight() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.ShortHundredweight)
    }
    
    public func shortTon() -> MassUnit {
        return MassUnit(value: self, type: MassUnitType.ShortTon)
    }
    
}
