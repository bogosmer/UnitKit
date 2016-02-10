//
//  UnitType.swift
//  UnitKit
//
//  Created by Bo Gosmer on 09/02/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import Foundation

public protocol UnitType {
    
    func localizedName(locale: NSLocale?) -> String
    func localizedAbbreviation(locale: NSLocale?) -> String
    func baseUnitTypePerUnit() -> NSDecimalNumber
}

public extension UnitType {
    
}