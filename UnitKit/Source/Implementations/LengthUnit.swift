//
//  LengthUnit.swift
//  UnitKit
//
//  Created by Bo Gosmer on 09/02/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import Foundation

public struct LengthUnit: _Unit {
    
    // MARK: - Public properties
    
    public static var sharedDecimalNumberHandler: NSDecimalNumberHandler?
    public var decimalNumberHandler: NSDecimalNumberHandler?
    
    public let unitType: LengthUnitType
    public private(set) var baseUnitTypeValue: NSDecimal = NSDecimalNumber.double(0).decimalValue
    
    public var millimetreValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(LengthUnitType.Millimetre)
    }
    
    public var centimetreValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(LengthUnitType.Centimetre)
    }
    
    public var metreValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(LengthUnitType.Metre)
    }
    
    public var kilometreValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(LengthUnitType.Kilometre)
    }
    
    public var inchValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(LengthUnitType.Inch)
    }
    
    public var footValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(LengthUnitType.Foot)
    }
    
    public var yardValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(LengthUnitType.Yard)
    }
    
    public var mileValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(LengthUnitType.Mile)
    }
    
    public var nauticalMileValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(LengthUnitType.NauticalMile)
    }
    
    // MARK: - Lifecycle
    
    public init(value: NSDecimalNumber, type: LengthUnitType) {
        self.unitType = type
        self.baseUnitTypeValue = convertToBaseUnitType(value, fromType: type).decimalValue
    }
    
    public init(value: Double, type: LengthUnitType) {
        self.init(value: NSDecimalNumber.double(value), type: type)
    }
    
    public init(value: Int, type: LengthUnitType) {
        self.init(value: NSDecimalNumber.integer(value), type: type)
    }
    
    // MARK: - Public functions
    
    public func valueForUnitType(type: LengthUnitType) -> NSDecimalNumber {
        switch type {
        case .Millimetre:
            return millimetreValue
        case .Centimetre:
            return centimetreValue
        case .Metre:
            return metreValue
        case .Kilometre:
            return kilometreValue
        case .Inch:
            return inchValue
        case .Foot:
            return footValue
        case .Yard:
            return yardValue
        case .Mile:
            return mileValue
        case .NauticalMile:
            return nauticalMileValue
        }
    }
    
}

// MARK: - Double extenstion

public extension Double {
    
    public func millimetres() -> LengthUnit {
        return LengthUnit(value: self, type: LengthUnitType.Millimetre)
    }
    
    public func centimetres() -> LengthUnit {
        return LengthUnit(value: self, type: LengthUnitType.Centimetre)
    }
    
    public func metres() -> LengthUnit {
        return LengthUnit(value: self, type: LengthUnitType.Metre)
    }
    
    public func kilometres() -> LengthUnit {
        return LengthUnit(value: self, type: LengthUnitType.Kilometre)
    }
    
    public func inches() -> LengthUnit {
        return LengthUnit(value: self, type: LengthUnitType.Inch)
    }
    
    public func feet() -> LengthUnit {
        return LengthUnit(value: self, type: LengthUnitType.Foot)
    }
    
    public func yards() -> LengthUnit {
        return LengthUnit(value: self, type: LengthUnitType.Yard)
    }
    
    public func miles() -> LengthUnit {
        return LengthUnit(value: self, type: LengthUnitType.Mile)
    }
    
    public func nauticalMiles() -> LengthUnit {
        return LengthUnit(value: self, type: LengthUnitType.NauticalMile)
    }
    
}

// MARK: - Int extenstion

public extension Int {
    
    public func millimetres() -> LengthUnit {
        return LengthUnit(value: self, type: LengthUnitType.Millimetre)
    }
    
    public func centimetres() -> LengthUnit {
        return LengthUnit(value: self, type: LengthUnitType.Centimetre)
    }
    
    public func metres() -> LengthUnit {
        return LengthUnit(value: self, type: LengthUnitType.Metre)
    }
    
    public func kilometres() -> LengthUnit {
        return LengthUnit(value: self, type: LengthUnitType.Kilometre)
    }
    
    public func inches() -> LengthUnit {
        return LengthUnit(value: self, type: LengthUnitType.Inch)
    }
    
    public func feet() -> LengthUnit {
        return LengthUnit(value: self, type: LengthUnitType.Foot)
    }
    
    public func yards() -> LengthUnit {
        return LengthUnit(value: self, type: LengthUnitType.Yard)
    }
    
    public func miles() -> LengthUnit {
        return LengthUnit(value: self, type: LengthUnitType.Mile)
    }
    
    public func nauticalMiles() -> LengthUnit {
        return LengthUnit(value: self, type: LengthUnitType.NauticalMile)
    }
    
}
