//
//  LengthUnitType.swift
//  UnitKit
//
//  Created by Bo Gosmer on 09/02/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import Foundation

public enum LengthUnitType: String, UnitType {
    
    // MARK: - Enum
    
    // MARK: Metric
    case Millimetre
    case Centimetre
    case Metre
    case Kilometre
    
    // MARK: Imperial
    case Inch
    case Foot
    case Yard
    case Mile
    
    // MARK: Marine
    case NauticalMile
    
    // MARK: - Public properties
    
    public var description:String {
        return self.rawValue
    }
    
    // MARK: - Public functions
    
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