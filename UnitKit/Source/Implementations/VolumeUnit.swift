//
//  VolumeType.swift
//  UnitKit
//
//  Created by Bo Gosmer on 09/02/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import Foundation

public struct VolumeUnit: Unit {
    
    // MARK: - Public properties
    
    public static var sharedDecimalNumberHandler: NSDecimalNumberHandler?
    public var decimalNumberHandler: NSDecimalNumberHandler?
    
    public let unitType: VolumeUnitType
    public var baseUnitTypeValue: NSDecimal = NSDecimalNumber(double: 0).decimalValue
    
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
        self.init(value: NSDecimalNumber(double: value), type: type)
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

extension Double {
    
    public func millilitre() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.Millilitre)
    }
    
    public func litre() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.Litre)
    }
    
    public func cubicMetre() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.CubicMetre)
    }
    
    public func cubicInch() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.CubicInch)
    }
    
    public func cubicFoot() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.CubicFoot)
    }
    
    public func fluidOunce() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.FluidOunce)
    }
    
    public func gill() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.Gill)
    }
    
    public func pint() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.Pint)
    }
    
    public func quart() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.Quart)
    }
    
    public func gallon() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.Gallon)
    }
    
    public func bushel() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.Bushel)
    }
    
    public func usFluidOunce() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USFluidOunce)
    }
    
    public func usLiquidGill() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USLiquidGill)
    }
    
    public func usLiquidPint() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USLiquidPint)
    }
    
    public func usDryPint() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USDryPint)
    }
    
    public func usLiquidQuart() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USLiquidQuart)
    }
    
    public func usDryQuart() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USDryQuart)
    }
    
    public func usLiquidGallon() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USLiquidGallon)
    }
    
    public func usDryGallon() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USDryGallon)
    }
    
    public func usBushel() -> VolumeUnit {
        return VolumeUnit(value: self, type: VolumeUnitType.USBushel)
    }

}