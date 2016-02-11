//
//  Localize.swift
//  UnitKit
//
//  Created by Bo Gosmer on 11/02/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import Foundation

internal final class Localize {
    
    static var bundle: NSBundle = NSBundle(forClass: Localize.self)
    
    static func preferredLanguageForLocale(locale: NSLocale?) -> String? {
        
        var localeIdentifier: String? = nil
        
        if let languageIdentifier = NSLocale.preferredLanguages().first {
            let components = NSLocale.componentsFromLocaleIdentifier(languageIdentifier)
            localeIdentifier = components[NSLocaleLanguageCode]
        }
        
        if let unwrappedLocale = locale {
            localeIdentifier = unwrappedLocale.localeIdentifier
        }
        
        return localeIdentifier
    }
    
    static func localize(key: String, locale: NSLocale?) -> String {
        guard let path = Localize.bundle.pathForResource(preferredLanguageForLocale(locale), ofType: "lproj"), bundle = NSBundle(path: path) else {
            return key
        }
        
        return bundle.localizedStringForKey(key, value: nil, table: nil)
    }
    
}