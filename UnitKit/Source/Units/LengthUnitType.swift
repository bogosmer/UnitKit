//
//  LengthUnitType.swift
//  UnitKit
//
//  Created by Bo Gosmer on 09/02/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import Foundation

public enum LengthUnitType: UnitType {
    
    // MARK: - Metric
    case Millimetre
    case Centimetre
    case Metre
    case Kilometre
    
    // MARK: - Imperial
    case Inch
    case Foot
    case Yard
    case Mile
    
    // MARK: - Marine
    case NauticalMile
    
    // MARK: - Public functions
    // TODO - use localization
    public func localizedName(locale: NSLocale? = NSLocale.currentLocale()) -> String {
        return localizedAbbreviation()
    }
    
    // TODO - use localization
    public func localizedAbbreviation(locale: NSLocale? = NSLocale.currentLocale()) -> String {
        let result: String
        switch self {
        case .Millimetre:
            result = "mm"
        case .Centimetre:
            result = "cm"
        case .Metre:
            result = "m"
        case .Kilometre:
            result = "km"
        case .Inch:
            result = "in"
        case .Foot:
            result = "ft"
        case .Yard:
            result = "yd"
        case .Mile:
            result = "mi"
        case .NauticalMile:
            result = "nmi"
        }
        return result
    }
    
    public func baseUnitTypePerUnit() -> NSDecimalNumber {
        return centimetresPerUnit()
    }
    
    // MARK: - Private functions
    
    private func centimetresPerUnit() -> NSDecimalNumber {
        let result: NSDecimalNumber
        switch self {
        case .Millimetre:
            result = NSDecimalNumber.double(0.1)
        case .Centimetre:
            result = NSDecimalNumber.integer(1)
        case .Metre:
            result = NSDecimalNumber.integer(100)
        case .Kilometre:
            result = NSDecimalNumber.integer(100000)
        case .Inch:
            result = NSDecimalNumber.double(2.54)
        case .Foot:
            result = NSDecimalNumber.double(30.48)
        case .Yard:
            result = NSDecimalNumber.double(91.44)
        case .Mile:
            result = NSDecimalNumber.double(160934.4)
        case .NauticalMile:
            result = NSDecimalNumber.double(185200)
        }
        return result
    }
    
}