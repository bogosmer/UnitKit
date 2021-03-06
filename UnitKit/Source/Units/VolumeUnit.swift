//
//  VolumeType.swift
//  UnitKit
//
//  Created by Bo Gosmer on 09/02/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import Foundation

public struct VolumeUnit: _Unit {
    
    // MARK: - Public properties
    
    public static var sharedDecimalNumberHandler: NSDecimalNumberHandler?
    public var decimalNumberHandler: NSDecimalNumberHandler?
    
    public let unitType: VolumeUnitType
    public private(set) var baseUnitTypeValue: NSDecimal = NSDecimalNumber.double(0).decimalValue
    
    public var millilitreValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(VolumeUnitType.Millilitre)
    }
    
    public var litreValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(VolumeUnitType.Litre)
    }
    
    public var cubicMetreValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(VolumeUnitType.CubicMetre)
    }
    
    public var cubicInchValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(VolumeUnitType.CubicInch)
    }
    
    public var cubicFootValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(VolumeUnitType.CubicFoot)
    }
    
    public var fluidOunceValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(VolumeUnitType.FluidOunce)
    }
    
    public var gillValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(VolumeUnitType.Gill)
    }
    
    public var pintValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(VolumeUnitType.Pint)
    }

    public var quartValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(VolumeUnitType.Quart)
    }
    
    public var gallonValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(VolumeUnitType.Gallon)
    }
    
    public var bushelValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(VolumeUnitType.Bushel)
    }
    
    public var usFluidOunceValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(VolumeUnitType.USFluidOunce)
    }
    
    public var usLiquidGillValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(VolumeUnitType.USLiquidGill)
    }
    
    public var usLiquidPintValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(VolumeUnitType.USLiquidPint)
    }
    
    public var usDryPintValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(VolumeUnitType.USDryPint)
    }
    
    public var usLiquidQuartValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(VolumeUnitType.USLiquidQuart)
    }
    
    public var usDryQuartValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(VolumeUnitType.USDryQuart)
    }
    
    public var usLiquidGallonValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(VolumeUnitType.USLiquidGallon)
    }
    
    public var usDryGallonValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(VolumeUnitType.USDryGallon)
    }
    
    public var usBushelValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(VolumeUnitType.USBushel)
    }
    
    // MARK: - Lifecycle
    
    public init(value: NSDecimalNumber, type: VolumeUnitType) {
        self.unitType = type
        self.baseUnitTypeValue = convertToBaseUnitType(value, fromType: type).decimalValue
    }
    
    public init(value: Double, type: VolumeUnitType) {
        self.init(value: NSDecimalNumber.double(value), type: type)
    }
    
    public init(value: Int, type: VolumeUnitType) {
        self.init(value: NSDecimalNumber.integer(value), type: type)
    }
    
    // MARK: - Public functions
    
    public func valueForUnitType(type: VolumeUnitType) -> NSDecimalNumber {
        switch type {
        case .Millilitre:
            return millilitreValue
        case .Litre:
            return litreValue
        case .CubicMetre:
            return cubicMetreValue
        case .CubicInch:
            return cubicInchValue
        case .CubicFoot:
            return cubicFootValue
        case .FluidOunce:
            return fluidOunceValue
        case .Gill:
            return gillValue
        case .Pint:
            return pintValue
        case .Quart:
            return quartValue
        case .Gallon:
            return gallonValue
        case .Bushel:
            return bushelValue
        case .USFluidOunce:
            return usFluidOunceValue
        case .USLiquidGill:
            return usLiquidGillValue
        case .USLiquidPint:
            return usLiquidPintValue
        case .USDryPint:
            return usDryPintValue
        case .USLiquidQuart:
            return usLiquidQuartValue
        case .USDryQuart:
            return usDryQuartValue
        case .USLiquidGallon:
            return usLiquidGallonValue
        case .USDryGallon:
            return usDryGallonValue
        case .USBushel:
            return usBushelValue
        }
    }
    
}

// MARK: - Double extenstion

public extension Double {
    
    public func millilitres() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.Millilitre)
    }
    
    public func litres() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.Litre)
    }
    
    public func cubicMetres() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.CubicMetre)
    }
    
    public func cubicInches() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.CubicInch)
    }
    
    public func cubicFeet() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.CubicFoot)
    }
    
    public func fluidOunces() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.FluidOunce)
    }
    
    public func gills() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.Gill)
    }
    
    public func pints() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.Pint)
    }
    
    public func quarts() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.Quart)
    }
    
    public func gallons() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.Gallon)
    }
    
    public func bushels() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.Bushel)
    }
    
    public func usFluidOunces() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USFluidOunce)
    }
    
    public func usLiquidGills() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USLiquidGill)
    }
    
    public func usLiquidPints() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USLiquidPint)
    }
    
    public func usDryPints() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USDryPint)
    }
    
    public func usLiquidQuarts() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USLiquidQuart)
    }
    
    public func usDryQuarts() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USDryQuart)
    }
    
    public func usLiquidGallons() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USLiquidGallon)
    }
    
    public func usDryGallons() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USDryGallon)
    }
    
    public func usBushels() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USBushel)
    }

}

// MARK: - Int extenstion

public extension Int {
    
    public func millilitres() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.Millilitre)
    }
    
    public func litres() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.Litre)
    }
    
    public func cubicMetres() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.CubicMetre)
    }
    
    public func cubicInches() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.CubicInch)
    }
    
    public func cubicFeet() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.CubicFoot)
    }
    
    public func fluidOunces() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.FluidOunce)
    }
    
    public func gills() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.Gill)
    }
    
    public func pints() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.Pint)
    }
    
    public func quarts() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.Quart)
    }
    
    public func gallons() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.Gallon)
    }
    
    public func bushels() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.Bushel)
    }
    
    public func usFluidOunces() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USFluidOunce)
    }
    
    public func usLiquidGills() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USLiquidGill)
    }
    
    public func usLiquidPints() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USLiquidPint)
    }
    
    public func usDryPints() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USDryPint)
    }
    
    public func usLiquidQuarts() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USLiquidQuart)
    }
    
    public func usDryQuarts() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USDryQuart)
    }
    
    public func usLiquidGallons() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USLiquidGallon)
    }
    
    public func usDryGallons() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USDryGallon)
    }
    
    public func usBushels() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USBushel)
    }
    
}