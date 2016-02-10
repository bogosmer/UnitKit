//
//  AreaUnit.swift
//  UnitKit
//
//  Created by Bo Gosmer on 09/02/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import Foundation

public struct AreaUnit: Unit {
    public typealias T = AreaUnitType
    
    // MARK: - Private properties
    
    public var baseUnitTypeValue: NSDecimal = NSDecimalNumber(double: 0).decimalValue
    
    // MARK: - Public properties
    
    public static var sharedDecimalNumberHandler: NSDecimalNumberHandler?
    public var decimalNumberHandler: NSDecimalNumberHandler?
    
    public let unitType: AreaUnitType
    
    public var sqaureMillimeterValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(AreaUnitType.SquareMillimetre)
    }
    
    public var squareCentimetreValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(AreaUnitType.SquareCentimetre)
    }
    
    public var squareMetreValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(AreaUnitType.SquareMetre)
    }
    
    public var hectareValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(AreaUnitType.Hectare)
    }
    
    public var squareKilometreValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(AreaUnitType.SquareKilometre)
    }
    
    public var squareInchValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(AreaUnitType.SquareInch)
    }
    
    public var squareFootValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(AreaUnitType.SquareFoot)
    }
    
    public var squareYardValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(AreaUnitType.SquareYard)
    }
    
    public var squareMileValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(AreaUnitType.SquareMile)
    }
    
    public var acreValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(AreaUnitType.Acre)
    }
    
    public var squareNauticalMileValue: NSDecimalNumber {
        return convertFromBaseUnitTypeTo(AreaUnitType.SquareNauticalMile)
    }
    
    // MARK: - Lifecycle
    
    public init(value: NSDecimalNumber, type: AreaUnitType) {
        self.unitType = type
        self.baseUnitTypeValue = convertToBaseUnitType(value, fromType: type).decimalValue
    }
    
    public init(value: Double, type: AreaUnitType) {
        self.init(value: NSDecimalNumber(double: value), type: type)
    }
    
    // MARK: - Public functions
    
    public func valueForUnitType(type: AreaUnitType) -> NSDecimalNumber {
        switch type {
        case .SquareMillimetre:
            return sqaureMillimeterValue
        case .SquareCentimetre:
            return squareCentimetreValue
        case .SquareMetre:
            return squareMetreValue
        case .Hectare:
            return hectareValue
        case .SquareKilometre:
            return squareKilometreValue
        case .SquareInch:
            return squareInchValue
        case .SquareFoot:
            return squareFootValue
        case .SquareYard:
            return squareYardValue
        case .Acre:
            return acreValue
        case .SquareMile:
            return squareMileValue
        case .SquareNauticalMile:
            return squareNauticalMileValue
        }
    }
    
    // MARK: - Private functions
}

// MARK: - Double extenstion

extension Double {
    
    public func squareMillimetres() -> AreaUnit {
        return AreaUnit(value: self, type: AreaUnitType.SquareMillimetre)
    }
    
    public func squareCentimetres() -> AreaUnit {
        return AreaUnit(value: self, type: AreaUnitType.SquareCentimetre)
    }
    
    public func squareMetres() -> AreaUnit {
        return AreaUnit(value: self, type: AreaUnitType.SquareMetre)
    }
    
    public func hectares() -> AreaUnit {
        return AreaUnit(value: self, type: AreaUnitType.Hectare)
    }
    
    public func squareKilometres() -> AreaUnit {
        return AreaUnit(value: self, type: AreaUnitType.SquareKilometre)
    }
    
    public func squareInches() -> AreaUnit {
        return AreaUnit(value: self, type: AreaUnitType.SquareInch)
    }
    
    public func squareFeet() -> AreaUnit {
        return AreaUnit(value: self, type: AreaUnitType.SquareFoot)
    }
    
    public func squareYards() -> AreaUnit {
        return AreaUnit(value: self, type: AreaUnitType.SquareYard)
    }
    
    public func acres() -> AreaUnit {
        return AreaUnit(value: self, type: AreaUnitType.Acre)
    }
    
    public func squareMiles() -> AreaUnit {
        return AreaUnit(value: self, type: AreaUnitType.SquareMile)
    }
    
    public func squareNauticalMiles() -> AreaUnit {
        return AreaUnit(value: self, type: AreaUnitType.SquareNauticalMile)
    }
    
}
