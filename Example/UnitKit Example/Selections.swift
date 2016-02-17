//
//  Selections.swift
//  UnitKit Example
//
//  Created by Bo Gosmer on 16/02/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import Foundation
import UnitKit

class Selections {
    
    // MARK: - Properties
    
    var unitKind: UnitKind? = nil
    
    var areaUnit: AreaUnit? = nil
    var lengthUnit: LengthUnit? = nil
    var massUnit: MassUnit? = nil
    var volumeUnit: VolumeUnit? = nil
    
    var sourceUnitType: UnitType? = nil
    var destinationUnitType: UnitType? = nil
    
    // MARK: - Singleton instance
    
    class var instance: Selections {
        struct Singleton {
            static let instance = Selections()
        }
        return Singleton.instance
    }
    
    // MARK: - Functions
    
    class func setUnitKind(name: String) {
        instance.unitKind = UnitKind(rawValue: name)
        
        instance.areaUnit = nil
        instance.lengthUnit = nil
        instance.massUnit = nil
        instance.volumeUnit = nil
        
        instance.sourceUnitType = nil
        instance.destinationUnitType = nil
    }
    
    class func setUnit(decimal: NSDecimalNumber?) {
        if let _ = instance.unitKind, sourceUnitType = instance.sourceUnitType, decimal = decimal {
            switch sourceUnitType {
            case is AreaUnitType:
                instance.areaUnit = AreaUnit(value: decimal, type: sourceUnitType as! AreaUnitType)
            case is LengthUnitType:
                instance.lengthUnit = LengthUnit(value: decimal, type: sourceUnitType as! LengthUnitType)
            case is MassUnitType:
                instance.massUnit = MassUnit(value: decimal, type: sourceUnitType as! MassUnitType)
            case is VolumeUnitType:
                instance.volumeUnit = VolumeUnit(value: decimal, type: sourceUnitType as! VolumeUnitType)
            default:
                break
            }
        }
        
        if decimal == nil {
            instance.areaUnit = nil
            instance.lengthUnit = nil
            instance.massUnit = nil
            instance.volumeUnit = nil
        }
    }
    
    class func setSourceUnitType(name: String) {
        if let unwrappedUnitKind = instance.unitKind {
            switch unwrappedUnitKind {
            case .Area:
                instance.sourceUnitType = AreaUnitType(rawValue: name)
                if let unitType = instance.sourceUnitType as? AreaUnitType {
                    setUnit(instance.areaUnit?.valueForUnitType(unitType))
                }
            case .Length:
                instance.sourceUnitType = LengthUnitType(rawValue: name)
                if let unitType = instance.sourceUnitType as? LengthUnitType {
                    setUnit(instance.lengthUnit?.valueForUnitType(unitType))
                }
            case .Mass:
                instance.sourceUnitType = MassUnitType(rawValue: name)
                if let unitType = instance.sourceUnitType as? MassUnitType {
                    setUnit(instance.massUnit?.valueForUnitType(unitType))
                }
            case .Volume:
                instance.sourceUnitType = VolumeUnitType(rawValue: name)
                if let unitType = instance.sourceUnitType as? VolumeUnitType {
                    setUnit(instance.volumeUnit?.valueForUnitType(unitType))
                }
            }
        }
    }
    
    class func setDestinationUnitType(name: String) {
        if let unwrappedUnitKind = instance.unitKind {
            switch unwrappedUnitKind {
            case .Area:
                instance.destinationUnitType = AreaUnitType(rawValue: name)
            case .Length:
                instance.destinationUnitType = LengthUnitType(rawValue: name)
            case .Mass:
                instance.destinationUnitType = MassUnitType(rawValue: name)
            case .Volume:
                instance.destinationUnitType = VolumeUnitType(rawValue: name)
            }
        }
    }
}