//
//  AreaUnitType.swift
//  UnitKit
//
//  Created by Bo Gosmer on 09/02/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import Foundation

public enum AreaUnitType: String, UnitType {
    
    // MARK: - Enum
    
    // MARK: Metric
    case SquareMillimetre
    case SquareCentimetre
    case SquareMetre
    case Hectare
    case SquareKilometre
    
    // MARK: Imperial
    case SquareInch
    case SquareFoot
    case SquareYard
    case Acre
    case SquareMile
    
    // MARK: Marine
    case SquareNauticalMile
    
    // MARK: - Public properties
    
    public var description:String {
        return self.rawValue
    }
    
    // MARK: - Public functions
    
    public func baseUnitTypePerUnit() -> NSDecimalNumber {
        return squareCentimetresPerUnit()
    }
    
    // MARK: - Private
    
    private func squareCentimetresPerUnit() -> NSDecimalNumber {
        let result: NSDecimalNumber
        switch self {
        case .SquareMillimetre:
            result = NSDecimalNumber.double(0.01)
        case .SquareCentimetre:
            result = NSDecimalNumber.one()
        case .SquareMetre:
            result = NSDecimalNumber.integer(10000)
        case .Hectare:
            result = NSDecimalNumber.integer(1000000)
        case .SquareKilometre:
            result = NSDecimalNumber.integer(10000000000)
        case .SquareInch:
            result = NSDecimalNumber.double(6.4516)
        case .SquareFoot:
            result = NSDecimalNumber.double(929.0304)
        case .SquareYard:
            result = NSDecimalNumber.double(8361.2736)
        case .Acre:
            result = NSDecimalNumber.double(40468564.224)
        case .SquareMile:
            result = NSDecimalNumber.double(25899881103.36)
        case .SquareNauticalMile:
            result = NSDecimalNumber.double(34299040000)
        }
        return result
    }
}