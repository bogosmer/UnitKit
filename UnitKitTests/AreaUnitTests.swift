//
//  AreaUnitTests.swift
//  UnitKit
//
//  Created by Bo Gosmer on 10/02/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import XCTest
@testable import UnitKit

class AreaUnitTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        AreaUnit.sharedDecimalNumberHandler = nil
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // MARK: - AreaUnit
    
    func testDecimalNumberInitializationUsingBaseUnitType() {
        let decimalValue = NSDecimalNumber.double(1)
        let areaUnitValue = NSDecimalNumber(decimal: AreaUnit(value: decimalValue, type: .SquareCentimetre).baseUnitTypeValue)
        XCTAssert(areaUnitValue == decimalValue, "expected \(decimalValue) - got \(areaUnitValue)")
    }
    
    func testDoubleInitializationUsingBaseUnitType() {
        let value: Double = 1
        let decimalValue = NSDecimalNumber.double(value)
        let areaUnitValue = NSDecimalNumber(decimal: AreaUnit(value: value, type: .SquareCentimetre).baseUnitTypeValue)
        XCTAssert(areaUnitValue == decimalValue, "expected \(decimalValue) - got \(areaUnitValue)")
    }
    
    func testIntInitializationUsingBaseUnitType() {
        let value: Int = 1
        let decimalValue = NSDecimalNumber.integer(value)
        let areaUnitValue = NSDecimalNumber(decimal: AreaUnit(value: value, type: .SquareCentimetre).baseUnitTypeValue)
        XCTAssert(areaUnitValue == decimalValue, "expected \(decimalValue) - got \(areaUnitValue)")
    }
    
    func testIntInitializationUsingOtherUnitType() {
        let value: Int = 1
        let decimalValue = NSDecimalNumber.integer(value).decimalNumberByMultiplyingBy(AreaUnitType.SquareMetre.baseUnitTypePerUnit())
        let areaUnitValue = NSDecimalNumber(decimal: AreaUnit(value: value, type: .SquareMetre).baseUnitTypeValue)
        XCTAssert(areaUnitValue == decimalValue, "expected \(decimalValue) - got \(areaUnitValue)")
    }
    
    func testDecimalNumberInitializationOtherBaseUnitType() {
        let value: Int = 1
        let decimalValue = NSDecimalNumber.double(1).decimalNumberByMultiplyingBy(AreaUnitType.Acre.baseUnitTypePerUnit())
        let areaUnitValue = NSDecimalNumber(decimal: AreaUnit(value: value, type: .Acre).baseUnitTypeValue)
        XCTAssert(areaUnitValue == decimalValue, "expected \(decimalValue) - got \(areaUnitValue)")
    }
    
    func testDoubleInitializationUsingOtherUnitType() {
        let value: Double = 1
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByMultiplyingBy(AreaUnitType.Hectare.baseUnitTypePerUnit())
        let areaUnitValue = NSDecimalNumber(decimal: AreaUnit(value: value, type: .Hectare).baseUnitTypeValue)
        XCTAssert(areaUnitValue == decimalValue, "expected \(decimalValue) - got \(areaUnitValue)")
    }
    
    func testsquareMillimetreValue() {
        let value: Double = 1
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(AreaUnitType.SquareMillimetre.baseUnitTypePerUnit())
        let areaUnit = AreaUnit(value: value, type: .SquareCentimetre).squareMillimetreValue
        XCTAssert(areaUnit == decimalValue, "expected \(decimalValue) - got \(areaUnit)")
    }
    
    func testSqaureMetreValue() {
        let value: Double = 2
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(AreaUnitType.SquareMetre.baseUnitTypePerUnit())
        let areaUnit = AreaUnit(value: value, type: .SquareCentimetre).squareMetreValue
        XCTAssert(areaUnit == decimalValue, "expected \(decimalValue) - got \(areaUnit)")
    }
    
    func testHectareValue() {
        let value: Double = 3
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(AreaUnitType.Hectare.baseUnitTypePerUnit())
        let areaUnit = AreaUnit(value: value, type: .SquareCentimetre).hectareValue
        XCTAssert(areaUnit == decimalValue, "expected \(decimalValue) - got \(areaUnit)")
    }
    
    func testSquareKilometreValue() {
        let value: Double = 4
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(AreaUnitType.SquareKilometre.baseUnitTypePerUnit())
        let areaUnit = AreaUnit(value: value, type: .SquareCentimetre).squareKilometreValue
        XCTAssert(areaUnit == decimalValue, "expected \(decimalValue) - got \(areaUnit)")
    }
    
    func testSquareInchValue() {
        let value: Double = 5
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(AreaUnitType.SquareInch.baseUnitTypePerUnit())
        let areaUnit = AreaUnit(value: value, type: .SquareCentimetre).squareInchValue
        XCTAssert(areaUnit == decimalValue, "expected \(decimalValue) - got \(areaUnit)")
    }
    
    func testSquareFootValue() {
        let value: Double = 6
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(AreaUnitType.SquareFoot.baseUnitTypePerUnit())
        let areaUnit = AreaUnit(value: value, type: .SquareCentimetre).squareFootValue
        XCTAssert(areaUnit == decimalValue, "expected \(decimalValue) - got \(areaUnit)")
    }
    
    func testSquareYardValue() {
        let value: Double = 7
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(AreaUnitType.SquareYard.baseUnitTypePerUnit())
        let areaUnit = AreaUnit(value: value, type: .SquareCentimetre).squareYardValue
        XCTAssert(areaUnit == decimalValue, "expected \(decimalValue) - got \(areaUnit)")
    }
    
    func testAcreValue() {
        let value: Double = 8
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(AreaUnitType.Acre.baseUnitTypePerUnit())
        let areaUnit = AreaUnit(value: value, type: .SquareCentimetre).acreValue
        XCTAssert(areaUnit == decimalValue, "expected \(decimalValue) - got \(areaUnit)")
    }
    
    func testSquareMileValue() {
        let value: Double = 9
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(AreaUnitType.SquareMile.baseUnitTypePerUnit())
        let areaUnit = AreaUnit(value: value, type: .SquareCentimetre).squareMileValue
        XCTAssert(areaUnit == decimalValue, "expected \(decimalValue) - got \(areaUnit)")
    }
    
    func testSquareNauticalMileValue() {
        let value: Double = 10
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(AreaUnitType.SquareNauticalMile.baseUnitTypePerUnit())
        let areaUnit = AreaUnit(value: value, type: .SquareCentimetre).squareNauticalMileValue
        XCTAssert(areaUnit == decimalValue, "expected \(decimalValue) - got \(areaUnit)")
    }
    
    func testConversionExample() {
        let value: Double = 1
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByMultiplyingBy(AreaUnitType.SquareNauticalMile.baseUnitTypePerUnit()).decimalNumberByDividingBy(AreaUnitType.SquareMile.baseUnitTypePerUnit())
        let areaUnit = AreaUnit(value: value, type: .SquareNauticalMile).squareMileValue
        XCTAssert(areaUnit == decimalValue, "expected \(decimalValue) - got \(areaUnit)")
    }
    
    func testSharedDecimalNumberHandler() {
        AreaUnit.sharedDecimalNumberHandler = NSDecimalNumberHandler(roundingMode: .RoundPlain, scale: 2, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: false)
        
        let value = 1.2345
        let areaUnitValue = AreaUnit(value: value, type: .SquareCentimetre)
        XCTAssert(AreaUnit.sharedDecimalNumberHandler != nil)
        XCTAssert(NSDecimalNumber(decimal: areaUnitValue.baseUnitTypeValue) == NSDecimalNumber.double(1.23), "expected 1.23 - got \(NSDecimalNumber(decimal: areaUnitValue.baseUnitTypeValue))")
    }
    
    func testInstanceDecimalNumberHandler() {
        let value = 9.8765
        var massUnit = AreaUnit(value: value, type: .SquareCentimetre)
        massUnit.decimalNumberHandler = NSDecimalNumberHandler(roundingMode: .RoundPlain, scale: 2, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: false)
        let baseUnitTypeValue = NSDecimalNumber(decimal: massUnit.baseUnitTypeValue)
        XCTAssert(NSDecimalNumber.double(value) == baseUnitTypeValue, "expected \(value) - got \(baseUnitTypeValue)")
    }
    
    // MARK: - CustomStringConvertible
    
    func testDescription() {
        let unit = AreaUnit(value: 1, type: .SquareCentimetre)
        XCTAssert(unit.description == "1 square centimetre", "got \(unit.description)")
    }
    
    // MARK: - Localization
    
    func testLocalizedName() {
        let unitSingle = AreaUnit(value: 1, type: .SquareCentimetre)
        XCTAssert(unitSingle.localizedNameOfUnitType(NSLocale(localeIdentifier: "en")) == "square centimetre")
        XCTAssert(unitSingle.localizedNameOfUnitType(NSLocale(localeIdentifier: "da")) == "kvadratcentimeter")
        
        let unitPlural = AreaUnit(value: 2, type: .SquareCentimetre)
        XCTAssert(unitPlural.localizedNameOfUnitType(NSLocale(localeIdentifier: "en")) == "square centimetres")
        XCTAssert(unitPlural.localizedNameOfUnitType(NSLocale(localeIdentifier: "da")) == "kvadratcentimeter")
    }
    
    func testLocalizedAbbreviation() {
        let unitSingle = AreaUnit(value: 1, type: .SquareCentimetre)
        XCTAssert(unitSingle.localizedAbbreviationOfUnitType(nil) == "cm²")
        XCTAssert(unitSingle.localizedAbbreviationOfUnitType(NSLocale(localeIdentifier: "en")) == "cm²")
        XCTAssert(unitSingle.localizedAbbreviationOfUnitType(NSLocale(localeIdentifier: "da")) == "cm²")
        
        let unitPlural = AreaUnit(value: 2, type: .SquareCentimetre)
        XCTAssert(unitPlural.localizedAbbreviationOfUnitType(nil) == "cm²")
        XCTAssert(unitPlural.localizedAbbreviationOfUnitType(NSLocale(localeIdentifier: "en")) == "cm²")
        XCTAssert(unitPlural.localizedAbbreviationOfUnitType(NSLocale(localeIdentifier: "da")) == "cm²")
    }
    
    // MARK: - Arithmetic
    
    func testAdditionOfAreaUnits() {
        let m2 = AreaUnit(value: 1, type: .SquareMetre)
        let mm2 = AreaUnit(value: 1, type: .SquareMillimetre)
        var addition = m2 + mm2
        var number = addition.squareMetreValue
        XCTAssert(addition.unitType == AreaUnitType.SquareMetre, "expected \(AreaUnitType.SquareMetre) - got \(addition.unitType)")
        XCTAssert(number == NSDecimalNumber.double(1.000001), "expected 1.000001, got \(number)")
        addition = mm2 + m2
        number = addition.squareMillimetreValue
        XCTAssert(addition.unitType == AreaUnitType.SquareMillimetre, "expected \(AreaUnitType.SquareMillimetre) - got \(addition.unitType)")
        XCTAssert(number == NSDecimalNumber.double(1000001), "expected 1000001, got \(number)")
    }
    
    func testAdditionWithDouble() {
        let initialValue:Double = 1245
        let additionValue = 2.5
        let acre = AreaUnit(value: initialValue, type: .SquareKilometre)
        let addition = acre + additionValue
        let number = addition.squareKilometreValue
        XCTAssert(number == NSDecimalNumber.double(initialValue + additionValue), "expected \(initialValue + additionValue) - got \(number)")
    }
    
    func testAdditionWithInteger() {
        let initialValue:Int = 967235
        let additionValue = 254
        let hectare = AreaUnit(value: initialValue, type: .SquareInch)
        let addition = hectare + additionValue
        let number = addition.squareInchValue
        XCTAssert(number == NSDecimalNumber.integer(initialValue + additionValue), "expected \(initialValue + additionValue) - got \(number)")
    }
    
    func testSubtractionOfAreaUnits() {
        let m2 = AreaUnit(value: 1, type: .SquareMetre)
        let cm2 = AreaUnit(value: 1, type: .SquareCentimetre)
        var subtraction = m2 - cm2
        var number = subtraction.squareMetreValue
        XCTAssert(subtraction.unitType == AreaUnitType.SquareMetre, "expected \(AreaUnitType.SquareMetre) - got \(subtraction.unitType)")
        XCTAssert(number == NSDecimalNumber.double(0.9999), "expected 0.9999, got \(number)")
        subtraction = cm2 - m2
        number = subtraction.squareCentimetreValue
        XCTAssert(subtraction.unitType == AreaUnitType.SquareCentimetre, "expected \(AreaUnitType.SquareCentimetre) - got \(subtraction.unitType)")
        XCTAssert(number == NSDecimalNumber.double(-9999), "expected -9999, got \(number)")
    }
    
    func testSubtractionWithDouble() {
        let initialValue:Double = 1245
        let subtractionValue = 2.5
        let squareFoot = AreaUnit(value: initialValue, type: .SquareFoot)
        var subtraction = squareFoot - subtractionValue
        var number = subtraction.squareFootValue
        XCTAssert(number == NSDecimalNumber.double(initialValue - subtractionValue), "expected \(initialValue - subtractionValue) - got \(number)")
        
        subtraction = subtractionValue - squareFoot
        number = subtraction.squareFootValue
        XCTAssert(number == NSDecimalNumber.double(subtractionValue - initialValue), "expected \(subtractionValue - initialValue) - got \(number)")
    }
    
    func testSubtractionWithInteger() {
        let initialValue:Int = 967235
        let subtractionValue = 254
        let squareYard = AreaUnit(value: initialValue, type: .SquareYard)
        let subtraction = squareYard - subtractionValue
        let number = subtraction.squareYardValue
        XCTAssert(number == NSDecimalNumber.integer(initialValue - subtractionValue), "expected \(initialValue - subtractionValue) - got \(number)")
    }
    
    func testMultiplicationWithDouble() {
        let initialValue:Double = 1000
        let factor = 2.5
        let acre = AreaUnit(value: initialValue, type: .Acre)
        let mult = acre * factor
        let number = mult.acreValue
        XCTAssert(number == NSDecimalNumber.double(initialValue * factor), "expected \(initialValue * factor) - got \(number)")
    }
    
    func testMultiplicationWithInteger() {
        let initialValue:Int = 1000
        let multiplicationValue = 3
        let hectare = AreaUnit(value: initialValue, type: .Hectare)
        let mult = hectare * multiplicationValue
        let number = mult.hectareValue
        XCTAssert(number == NSDecimalNumber.integer(initialValue * multiplicationValue), "expected \(initialValue * multiplicationValue) - got \(number)")
    }
    
    func testDivisionWithDouble() {
        let initialValue:Double = 1000
        let divValue = 2.5
        let acre = AreaUnit(value: initialValue, type: .SquareMile)
        let div = acre / divValue
        let number = div.squareMileValue
        XCTAssert(number == NSDecimalNumber.double(initialValue / divValue), "expected \(initialValue / divValue) - got \(number)")
    }
    
    func testDivisionWithInteger() {
        let initialValue:Int = 2000
        let divValue = 4
        let squareNauticalMile = AreaUnit(value: initialValue, type: .SquareNauticalMile)
        var div = squareNauticalMile / divValue
        var number = div.squareNauticalMileValue
        XCTAssert(number == NSDecimalNumber.integer(initialValue / divValue), "expected \(initialValue / divValue) - got \(number)")
        
        div = divValue / squareNauticalMile
        number = div.squareNauticalMileValue
        XCTAssert(number == NSDecimalNumber.double(Double(divValue) / Double(initialValue)), "expected \(Double(divValue) / Double(initialValue)) - got \(number)")
    }
    
    // MARK: - Double and Int extensions
    
    func testSquareMillimetreExtension() {
        XCTAssert(1.0.squareMillimetres().squareMillimetreValue == AreaUnit(value: 1.0, type: .SquareMillimetre).squareMillimetreValue)
        XCTAssert(1.squareMillimetres().squareMillimetreValue == AreaUnit(value: 1, type: .SquareMillimetre).squareMillimetreValue)
    }
    
    func testSquareCentimetreExtension() {
        XCTAssert(1.0.squareCentimetres().squareCentimetreValue == AreaUnit(value: 1.0, type: .SquareCentimetre).squareCentimetreValue)
        XCTAssert(1.squareCentimetres().squareCentimetreValue == AreaUnit(value: 1, type: .SquareCentimetre).squareCentimetreValue)
    }
    
    func testSquareMeterExtension() {
        XCTAssert(1.0.squareMetres().squareMetreValue == AreaUnit(value: 1.0, type: .SquareMetre).squareMetreValue)
        XCTAssert(1.squareMetres().squareMetreValue == AreaUnit(value: 1, type: .SquareMetre).squareMetreValue)
    }
    
    func testHectareExtension() {
        XCTAssert(1.0.hectares().hectareValue == AreaUnit(value: 1.0, type: .Hectare).hectareValue)
        XCTAssert(1.hectares().hectareValue == AreaUnit(value: 1, type: .Hectare).hectareValue)
    }
    
    func testSquareKilometreExtension() {
        XCTAssert(1.0.squareKilometres().squareKilometreValue == AreaUnit(value: 1.0, type: .SquareKilometre).squareKilometreValue)
        XCTAssert(1.squareKilometres().squareKilometreValue == AreaUnit(value: 1, type: .SquareKilometre).squareKilometreValue)
        XCTAssert(1.squareKilometres().squareCentimetreValue.description == "10000000000", "exptected 10000000000 - got \(1.squareKilometres().squareCentimetreValue.description)")
    }
    
    func testSquareInchExtension() {
        XCTAssert(1.0.squareInches().squareInchValue == AreaUnit(value: 1.0, type: .SquareInch).squareInchValue)
        XCTAssert(1.squareInches().squareInchValue == AreaUnit(value: 1, type: .SquareInch).squareInchValue)
    }
    
    func testSquareFootExtension() {
        XCTAssert(1.0.squareFeet().squareFootValue == AreaUnit(value: 1.0, type: .SquareFoot).squareFootValue)
        XCTAssert(1.squareFeet().squareFootValue == AreaUnit(value: 1, type: .SquareFoot).squareFootValue)
    }
    
    func testSquareYardExtension() {
        XCTAssert(1.0.squareYards().squareYardValue == AreaUnit(value: 1.0, type: .SquareYard).squareYardValue)
        XCTAssert(1.squareYards().squareYardValue == AreaUnit(value: 1, type: .SquareYard).squareYardValue)
    }
    
    func testAcreExtension() {
        XCTAssert(1.0.acres().acreValue == AreaUnit(value: 1.0, type: .Acre).acreValue)
        XCTAssert(1.acres().acreValue == AreaUnit(value: 1, type: .Acre).acreValue)
    }
    
    func testSquareMileExtension() {
        XCTAssert(1.0.squareMiles().squareMileValue == AreaUnit(value: 1.0, type: .SquareMile).squareMileValue)
        XCTAssert(1.squareMiles().squareMileValue == AreaUnit(value: 1, type: .SquareMile).squareMileValue)
        XCTAssert(1.squareMiles().squareCentimetreValue.description == "25899881103.36", "expected 25899881103.36 - got \(1.squareMiles().squareCentimetreValue.description)")
    }
    
    func testSquareNauticalMileExtension() {
        XCTAssert(1.0.squareNauticalMiles().squareNauticalMileValue == AreaUnit(value: 1.0, type: .SquareNauticalMile).squareNauticalMileValue)
        XCTAssert(1.squareNauticalMiles().squareNauticalMileValue == AreaUnit(value: 1, type: .SquareNauticalMile).squareNauticalMileValue)
        XCTAssert(1.squareNauticalMiles().squareCentimetreValue.description == "34299040000", "expected 34299040000 - got \(1.squareNauticalMiles().squareCentimetreValue.description)")
    }
    
}

