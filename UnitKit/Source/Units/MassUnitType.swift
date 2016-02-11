//
//  Unit.swift
//  UnitKit
//
//  Created by Bo Gosmer on 20/01/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import Foundation

public enum MassUnitType: String, UnitType {
    
    // MARK: - Enum
    
    // MARK: Metric
    case Milligram
    case Gram
    case Kilo
    case Tonne
    
    // MARK: Imperial
    case Grain
    case Dram
    case Ounce
    case Pound
    case Stone
    case Quarter
    case LongHundredweight
    case LongTon
    
    // MARK: US
    case ShortHundredweight
    case ShortTon
    
    // MARK: - Public properties
    
    public var description:String {
        return self.rawValue
    }
    
    // MARK: - Public functions
//    // TODO - use localization
//    public func localizedName(locale: NSLocale?) -> String {
//        return localizedAbbreviation(locale)
//    }
//    
//    // TODO - use localization
//    public func localizedAbbreviation(locale: NSLocale?) -> String {
//        let result: String
//        switch self {
//        case .Milligram:
//            result = "mg"
//        case .Gram:
//            result = "g"
//        case .Kilo:
//            result = "kg"
//        case .Tonne:
//            result = "t"
//        case .Grain:
//            result = "gr"
//        case .Dram:
//            result = "dr"
//        case .Ounce:
//            result = "oz"
//        case .Pound:
//            result = "lb"
//        case .Stone:
//            result = "st"
//        case .Quarter:
//            result = "qtr"
//        case .LongHundredweight:
//            result = "cwt"
//        case .LongTon:
//            result = "t"
//        case .ShortHundredweight:
//            result = "cwt"
//        case .ShortTon:
//            result = "t"
//        }
//        return result
//    }
    
    public func baseUnitTypePerUnit() -> NSDecimalNumber {
        return gramsPerUnit()
    }
    
    // MARK: - Private functions
    
    private func gramsPerUnit() -> NSDecimalNumber {
        let result: NSDecimalNumber
        switch self {
        case .Milligram:
            result = NSDecimalNumber.double(0.001)
        case .Gram:
            result = NSDecimalNumber.integer(1)
        case .Kilo:
            result = NSDecimalNumber.integer(1000)
        case .Tonne:
            result = NSDecimalNumber.integer(1000000)
        case .Grain:
            result = NSDecimalNumber.double(0.06479891)
        case .Dram:
            result = NSDecimalNumber.double(1.7718451953125)
        case .Ounce:
            result = NSDecimalNumber.double(28.349523125)
        case .Pound:
            result = NSDecimalNumber.double(453.59237)
        case .Stone:
            result = NSDecimalNumber.double(6350.29318)
        case .Quarter:
            result = NSDecimalNumber.double(12700.58636)
        case .LongHundredweight:
            result = NSDecimalNumber.double(45359.237)
        case .LongTon:
            result = NSDecimalNumber.integer(1016000)
        case .ShortHundredweight:
            result = NSDecimalNumber.double(50802.345)
        case .ShortTon:
            result = NSDecimalNumber.integer(907000)
        }
        return result
    }
}
