//
//  VolumeUnitType.swift
//  UnitKit
//
//  Created by Bo Gosmer on 09/02/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import Foundation

public enum VolumeUnitType: UnitType {
    
    // MARK: - Metric
    case Millilitre
    case Litre
    case CubicMetre
    
    // MARK: - Imperial
    case CubicInch
    case CubicFoot
    case FluidOunce
    case Gill
    case Pint
    case Quart
    case Gallon
    case Bushel
    
    // MARK: - US
    case USFluidOunce
    case USLiquidGill
    case USLiquidPint
    case USDryPint
    case USLiquidQuart
    case USDryQuart
    case USLiquidGallon
    case USDryGallon
    case USBushel
    
    // MARK: - Public functions
    // TODO - use localization
    public func localizedName(locale: NSLocale? = NSLocale.currentLocale()) -> String {
        return localizedAbbreviation()
    }
    
    // TODO - use localization
    public func localizedAbbreviation(locale: NSLocale? = NSLocale.currentLocale()) -> String {
        let result: String
        switch self {
        case .Millilitre:
            result = "ml"
        case .Litre:
            result = "l"
        case .CubicMetre:
            result = "m³"
        case .CubicInch:
            result = "cu in"
        case .CubicFoot:
            result = "cu ft"
        case .FluidOunce:
            result = "fl oz"
        case .Gill:
            result = "gill"
        case .Pint:
            result = "pt"
        case .Quart:
            result = "qt"
        case .Gallon:
            result = "gal"
        case .Bushel:
            result = "bu"
        case .USFluidOunce:
            result = "fl oz"
        case .USLiquidGill:
            result = "liquid gill"
        case .USLiquidPint:
            result = "liquid pint"
        case .USDryPint:
            result = "dry pint"
        case .USLiquidQuart:
            result = "liquid quart"
        case .USDryQuart:
            result = "dry pint"
        case .USLiquidGallon:
            result = "liquid gallon"
        case .USDryGallon:
            result = "dry gallon"
        case .USBushel:
            result = "bu"
        }
        return result
    }
    
    public func baseUnitTypePerUnit() -> NSDecimalNumber {
        return millilitresPerUnit()
    }
    
    // MARK: - Private functions
    
    private func millilitresPerUnit() -> NSDecimalNumber {
        let result: NSDecimalNumber
        switch self {
        case .Millilitre:
            result = NSDecimalNumber(integer: 1)
        case .Litre:
            result = NSDecimalNumber(integer: 1000)
        case .CubicMetre:
            result = NSDecimalNumber(integer: 1000000)
        case .CubicInch:
            result = NSDecimalNumber(double: 16.387064)
        case .CubicFoot:
            result = NSDecimalNumber(double: 28316.846592)
        case .FluidOunce:
            result = NSDecimalNumber(double: 28.4130625)
        case .Gill:
            result = NSDecimalNumber(double: 142.0653125)
        case .Pint:
            result = NSDecimalNumber(double: 568.26125)
        case .Quart:
            result = NSDecimalNumber(double: 1136.5225)
        case .Gallon:
            result = NSDecimalNumber(double: 4546.09)
        case .Bushel:
            result = NSDecimalNumber(double: 36368.72)
        case .USFluidOunce:
            result = NSDecimalNumber(double: 29.5735295625)
        case .USLiquidGill:
            result = NSDecimalNumber(double: 118.29411825)
        case .USLiquidPint:
            result = NSDecimalNumber(double: 473.176473)
        case .USDryPint:
            result = NSDecimalNumber(double: 550.6104713575)
        case .USLiquidQuart:
            result = NSDecimalNumber(double: 946.352946)
        case .USDryQuart:
            result = NSDecimalNumber(double: 1101.220942715)
        case .USLiquidGallon:
            result = NSDecimalNumber(double: 3785.411784)
        case .USDryGallon:
            result = NSDecimalNumber(double: 4404.88377086)
        case .USBushel:
            result = NSDecimalNumber(double: 131.2266797761942)
        }
        return result
    }
    
}