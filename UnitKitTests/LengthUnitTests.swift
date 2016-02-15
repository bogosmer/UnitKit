//
//  LengthUnitTests.swift
//  UnitKit
//
//  Created by Bo Gosmer on 10/02/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import XCTest
@testable import UnitKit

class LengthUnitTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        LengthUnit.sharedDecimalNumberHandler = nil
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // MARK: - LengthUnit
    
    func testDecimalNumberInitializationUsingBaseUnitType() {
        let decimalValue = NSDecimalNumber.double(1)
        let lengthUnitValue = NSDecimalNumber(decimal: LengthUnit(value: decimalValue, type: .Centimetre).baseUnitTypeValue)
        XCTAssert(lengthUnitValue == decimalValue, "expected \(decimalValue) - got \(lengthUnitValue)")
    }
    
    func testDoubleInitializationUsingBaseUnitType() {
        let value: Double = 1
        let decimalValue = NSDecimalNumber.double(value)
        let lengthUnitValue = NSDecimalNumber(decimal: LengthUnit(value: value, type: .Centimetre).baseUnitTypeValue)
        XCTAssert(lengthUnitValue == decimalValue, "expected \(decimalValue) - got \(lengthUnitValue)")
    }
    
    func testIntInitializationUsingBaseUnitType() {
        let value: Int = 1
        let decimalValue = NSDecimalNumber.integer(value)
        let lengthUnitValue = NSDecimalNumber(decimal: LengthUnit(value: value, type: .Centimetre).baseUnitTypeValue)
        XCTAssert(lengthUnitValue == decimalValue, "expected \(decimalValue) - got \(lengthUnitValue)")
    }
    
    func testIntInitializationUsingOtherUnitType() {
        let value: Int = 1
        let decimalValue = NSDecimalNumber.integer(value).decimalNumberByMultiplyingBy(LengthUnitType.Metre.baseUnitTypePerUnit())
        let lengthUnitValue = NSDecimalNumber(decimal: LengthUnit(value: value, type: .Metre).baseUnitTypeValue)
        XCTAssert(lengthUnitValue == decimalValue, "expected \(decimalValue) - got \(lengthUnitValue)")
    }
    
    func testDecimalNumberInitializationOthergBaseUnitType() {
        let value: Int = 1
        let decimalValue = NSDecimalNumber.double(1).decimalNumberByMultiplyingBy(LengthUnitType.Yard.baseUnitTypePerUnit())
        let lengthUnitValue = NSDecimalNumber(decimal: LengthUnit(value: value, type: .Yard).baseUnitTypeValue)
        XCTAssert(lengthUnitValue == decimalValue, "expected \(decimalValue) - got \(lengthUnitValue)")
    }
    
    func testDoubleInitializationUsingOtherUnitType() {
        let value: Double = 1
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByMultiplyingBy(LengthUnitType.Foot.baseUnitTypePerUnit())
        let lengthUnitValue = NSDecimalNumber(decimal: LengthUnit(value: value, type: .Foot).baseUnitTypeValue)
        XCTAssert(lengthUnitValue == decimalValue, "expected \(decimalValue) - got \(lengthUnitValue)")
    }
    
    func testMillimetreValue() {
        let value: Double = 1
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(LengthUnitType.Millimetre.baseUnitTypePerUnit())
        let lengthUnit = LengthUnit(value: value, type: .Centimetre).millimetreValue
        XCTAssert(lengthUnit == decimalValue, "expected \(decimalValue) - got \(lengthUnit)")
    }
    
    func testMetreValue() {
        let value: Double = 2
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(LengthUnitType.Metre.baseUnitTypePerUnit())
        let lengthUnit = LengthUnit(value: value, type: .Centimetre).metreValue
        XCTAssert(lengthUnit == decimalValue, "expected \(decimalValue) - got \(lengthUnit)")
    }
    
    func testKilometreValue() {
        let value: Double = 3
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(LengthUnitType.Kilometre.baseUnitTypePerUnit())
        let lengthUnit = LengthUnit(value: value, type: .Centimetre).kilometreValue
        XCTAssert(lengthUnit == decimalValue, "expected \(decimalValue) - got \(lengthUnit)")
    }
    
    func testInchValue() {
        let value: Double = 4
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(LengthUnitType.Inch.baseUnitTypePerUnit())
        let lengthUnit = LengthUnit(value: value, type: .Centimetre).inchValue
        XCTAssert(lengthUnit == decimalValue, "expected \(decimalValue) - got \(lengthUnit)")
    }
    
    func testFootValue() {
        let value: Double = 5
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(LengthUnitType.Foot.baseUnitTypePerUnit())
        let lengthUnit = LengthUnit(value: value, type: .Centimetre).footValue
        XCTAssert(lengthUnit == decimalValue, "expected \(decimalValue) - got \(lengthUnit)")
    }
    
    func testYardValue() {
        let value: Double = 6
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(LengthUnitType.Yard.baseUnitTypePerUnit())
        let lengthUnit = LengthUnit(value: value, type: .Centimetre).yardValue
        XCTAssert(lengthUnit == decimalValue, "expected \(decimalValue) - got \(lengthUnit)")
    }
    
    func testMileValue() {
        let value: Double = 7
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(LengthUnitType.Mile.baseUnitTypePerUnit())
        let lengthUnit = LengthUnit(value: value, type: .Centimetre).mileValue
        XCTAssert(lengthUnit == decimalValue, "expected \(decimalValue) - got \(lengthUnit)")
    }
    
    func testNauticalMileValue() {
        let value: Double = 8
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(LengthUnitType.NauticalMile.baseUnitTypePerUnit())
        let lengthUnit = LengthUnit(value: value, type: .Centimetre).nauticalMileValue
        XCTAssert(lengthUnit == decimalValue, "expected \(decimalValue) - got \(lengthUnit)")
    }
    
    func testConversionExample() {
        let value: Double = 1
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByMultiplyingBy(LengthUnitType.NauticalMile.baseUnitTypePerUnit()).decimalNumberByDividingBy(LengthUnitType.Mile.baseUnitTypePerUnit())
        let lengthUnit = LengthUnit(value: value, type: .NauticalMile).mileValue
        XCTAssert(lengthUnit == decimalValue, "expected \(decimalValue) - got \(lengthUnit)")
    }
    
    func testSharedDecimalNumberHandler() {
        LengthUnit.sharedDecimalNumberHandler = NSDecimalNumberHandler(roundingMode: .RoundPlain, scale: 2, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: false)
        
        let value = 1.2345
        let lengthUnitValue = LengthUnit(value: value, type: .Centimetre)
        XCTAssert(LengthUnit.sharedDecimalNumberHandler != nil)
        XCTAssert(NSDecimalNumber(decimal: lengthUnitValue.baseUnitTypeValue) == NSDecimalNumber.double(1.23), "expected 1.23 - got \(NSDecimalNumber(decimal: lengthUnitValue.baseUnitTypeValue))")
    }
    
    func testInstanceDecimalNumberHandler() {
        let value = 9.8765
        var lengthUnit = LengthUnit(value: value, type: .Centimetre)
        lengthUnit.decimalNumberHandler = NSDecimalNumberHandler(roundingMode: .RoundPlain, scale: 2, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: false)
        let baseUnitTypeValue = NSDecimalNumber(decimal: lengthUnit.baseUnitTypeValue)
        XCTAssert(NSDecimalNumber.double(value) == baseUnitTypeValue, "expected \(value) - got \(baseUnitTypeValue)")
    }
    
    // MARK: - CustomStringConvertible
    
    func testDescription() {
        let unit = LengthUnit(value: 1, type: .Centimetre)
        XCTAssert(unit.description == "1 centimetre", "expected 1 centimetre - got \(unit.description)")
    }
    
    // MARK: - Localization
    
    func testLocalizedName() {
        let unitSingle = LengthUnit(value: 1, type: .Centimetre)
        XCTAssert(unitSingle.localizedNameOfUnitType(NSLocale(localeIdentifier: "en")) == "centimetre")
        XCTAssert(unitSingle.localizedNameOfUnitType(NSLocale(localeIdentifier: "da")) == "centimeter")
        
        let unitPlural = LengthUnit(value: 2, type: .Centimetre)
        XCTAssert(unitPlural.localizedNameOfUnitType(NSLocale(localeIdentifier: "en")) == "centimetres")
        XCTAssert(unitPlural.localizedNameOfUnitType(NSLocale(localeIdentifier: "da")) == "centimeter")
    }
    
    func testLocalizedAbbreviation() {
        let unitSingle = LengthUnit(value: 1, type: .Centimetre)
        XCTAssert(unitSingle.localizedAbbreviationOfUnitType(nil) == "cm")
        XCTAssert(unitSingle.localizedAbbreviationOfUnitType(NSLocale(localeIdentifier: "en")) == "cm")
        XCTAssert(unitSingle.localizedAbbreviationOfUnitType(NSLocale(localeIdentifier: "da")) == "cm")
        
        let unitPlural = LengthUnit(value: 2, type: .Centimetre)
        XCTAssert(unitPlural.localizedAbbreviationOfUnitType(nil) == "cm")
        XCTAssert(unitPlural.localizedAbbreviationOfUnitType(NSLocale(localeIdentifier: "en")) == "cm")
        XCTAssert(unitPlural.localizedAbbreviationOfUnitType(NSLocale(localeIdentifier: "da")) == "cm")
    }
    
    // MARK: - Arithmetic
    
    func testAdditionOfLengthUnits() {
        let metre = LengthUnit(value: 1, type: .Metre)
        let centimetre = LengthUnit(value: 1, type: .Centimetre)
        let addition = metre + centimetre
        let number = addition.metreValue
        XCTAssert(addition.unitType == LengthUnitType.Metre, "expected \(LengthUnitType.Metre) - got \(addition.unitType)")
        XCTAssert(number == NSDecimalNumber.double(1.01), "expected 1.01, got \(number)")
    }
    
    func testAdditionOfLengthUnitsWithSharedDecimalHandler() {
        LengthUnit.sharedDecimalNumberHandler = NSDecimalNumberHandler(roundingMode: .RoundPlain, scale: 1, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: true)
        let addition2 = LengthUnit(value: 1, type: .Metre) + LengthUnit(value: 1, type: .Centimetre)
        XCTAssert(addition2.metreValue == NSDecimalNumber.double(1), "expected 1, got \(addition2.metreValue)")
    }
    
    // this one is actually correct since the addtion creates a new LengthUnit that is converted to base unit type using the sharedDecimalHandler
    func testAdditionOfLengthUnitsWithSharedDecimalHandlerAndHandlerOnLeftOperand() {
        LengthUnit.sharedDecimalNumberHandler = NSDecimalNumberHandler(roundingMode: .RoundPlain, scale: 1, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: true)
        var metre2 = LengthUnit(value: 1, type: .Metre)
        metre2.decimalNumberHandler = NSDecimalNumberHandler(roundingMode: .RoundPlain, scale: 2, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: true)
        let addition3 = metre2 + LengthUnit(value: 1, type: .Centimetre)
        XCTAssert(addition3.metreValue == NSDecimalNumber.double(1), "expected 1, got \(addition3.metreValue)")
    }
    
    func testAdditionOfLengthUnitsWithDecimalHandlerOnRightOperand() {
        var centimetre2 = LengthUnit(value: 1, type: .Centimetre)
        centimetre2.decimalNumberHandler = NSDecimalNumberHandler(roundingMode: .RoundPlain, scale: 0, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: true)
        let addition4 = LengthUnit(value: 1, type: .Metre) + centimetre2
        XCTAssert(addition4.metreValue == NSDecimalNumber.double(1), "expected 1, got \(addition4.metreValue)")
    }
    
    func testAdditionWithDouble() {
        let initialValue:Double = 1245
        let additionValue = 2.5
        let foot = LengthUnit(value: initialValue, type: .Foot)
        var addition = foot + additionValue
        var number = addition.footValue
        XCTAssert(number == NSDecimalNumber.double(initialValue + additionValue), "expected \(initialValue + additionValue) - got \(number)")
        
        addition = additionValue + foot
        number = addition.footValue
        XCTAssert(number == NSDecimalNumber.double(initialValue + additionValue), "expected \(initialValue + additionValue) - got \(number)")
    }
    
    func testAdditionWithInteger() {
        let initialValue:Int = 967235
        let additionValue = 254
        let foot = LengthUnit(value: initialValue, type: .Foot)
        var addition = foot + additionValue
        var number = addition.footValue
        XCTAssert(number == NSDecimalNumber.integer(initialValue + additionValue), "expected \(initialValue + additionValue) - got \(number)")
        
        addition = additionValue + foot
        number = addition.footValue
        XCTAssert(number == NSDecimalNumber.integer(initialValue + additionValue), "expected \(initialValue + additionValue) - got \(number)")
    }
    
    func testSubtractionOfLengthUnits() {
        let m2 = LengthUnit(value: 1, type: .Metre)
        let cm2 = LengthUnit(value: 1, type: .Centimetre)
        var subtraction = m2 - cm2
        var number = subtraction.metreValue
        XCTAssert(subtraction.unitType == LengthUnitType.Metre, "expected \(LengthUnitType.Metre) - got \(subtraction.unitType)")
        XCTAssert(number == NSDecimalNumber.double(0.99), "expected 0.99, got \(number)")
        subtraction = cm2 - m2
        number = subtraction.centimetreValue
        XCTAssert(subtraction.unitType == LengthUnitType.Centimetre, "expected \(LengthUnitType.Centimetre) - got \(subtraction.unitType)")
        XCTAssert(number == NSDecimalNumber.double(-99), "expected -99, got \(number)")
    }
    
    func testSubtractionWithDouble() {
        let initialValue:Double = 1245
        let subtractionValue = 2.5
        let foot = LengthUnit(value: initialValue, type: .Foot)
        let subtraction = foot - subtractionValue
        let number = subtraction.footValue
        XCTAssert(number == NSDecimalNumber.double(initialValue - subtractionValue), "expected \(initialValue - subtractionValue) - got \(number)")
    }
    
    func testSubtractionWithInteger() {
        let initialValue:Int = 967235
        let subtractionValue = 254
        let foot = LengthUnit(value: initialValue, type: .Foot)
        var subtraction = foot - subtractionValue
        var number = subtraction.footValue
        XCTAssert(number == NSDecimalNumber.integer(initialValue - subtractionValue), "expected \(initialValue - subtractionValue) - got \(number)")
        
        subtraction = subtractionValue - foot
        number = subtraction.footValue
        XCTAssert(number == NSDecimalNumber.integer(subtractionValue - initialValue), "expected \(subtractionValue - initialValue) - got \(number)")
    }
    
    func testSubtractionOfLengthUnitsWithSharedDecimalHandler() {
        LengthUnit.sharedDecimalNumberHandler = NSDecimalNumberHandler(roundingMode: .RoundPlain, scale: 1, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: true)
        let addition2 = LengthUnit(value: 1, type: .Metre) - LengthUnit(value: 1, type: .Centimetre)
        XCTAssert(addition2.metreValue == NSDecimalNumber.double(1), "expected 1, got \(addition2.metreValue)")
    }
    
    // this one is actually correct since the addtion creates a new LengthUnit that is converted to base unit type using the sharedDecimalHandler
    func testSubtractionOfLengthUnitsWithSharedDecimalHandlerAndHandlerOnLeftOperand() {
        LengthUnit.sharedDecimalNumberHandler = NSDecimalNumberHandler(roundingMode: .RoundPlain, scale: 1, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: true)
        var metre2 = LengthUnit(value: 1, type: .Metre)
        metre2.decimalNumberHandler = NSDecimalNumberHandler(roundingMode: .RoundPlain, scale: 2, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: true)
        let addition3 = metre2 - LengthUnit(value: 1, type: .Centimetre)
        XCTAssert(addition3.metreValue == NSDecimalNumber.double(1), "expected 1, got \(addition3.metreValue)")
    }
    
    func testSubtractionOfLengthUnitsWithDecimalHandlerOnRightOperand() {
        var centimetre2 = LengthUnit(value: 1, type: .Centimetre)
        centimetre2.decimalNumberHandler = NSDecimalNumberHandler(roundingMode: .RoundPlain, scale: 0, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: true)
        let addition4 = LengthUnit(value: 1, type: .Metre) - centimetre2
        XCTAssert(addition4.metreValue == NSDecimalNumber.double(1), "expected 1, got \(addition4.metreValue)")
    }
    
    func testMultiplicationWithDouble() {
        let initialValue:Double = 1000
        let factor = 2.5
        let acre = LengthUnit(value: initialValue, type: .Foot)
        let mult = acre * factor
        let number = mult.footValue
        XCTAssert(number == NSDecimalNumber.double(initialValue * factor), "expected \(initialValue * factor) - got \(number)")
    }
    
    func testMultiplicationWithInteger() {
        let initialValue:Int = 1000
        let multiplicationValue = 3
        let foot = LengthUnit(value: initialValue, type: .Foot)
        var mult = foot * multiplicationValue
        var number = mult.footValue
        XCTAssert(number == NSDecimalNumber.integer(initialValue * multiplicationValue), "expected \(initialValue * multiplicationValue) - got \(number)")
        
        mult = multiplicationValue * foot
        number = mult.footValue
        XCTAssert(number == NSDecimalNumber.integer(initialValue * multiplicationValue), "expected \(initialValue * multiplicationValue) - got \(number)")
    }
    
    func testMultiplicationOfLengthUnitsWithSharedDecimalHandler() {
        LengthUnit.sharedDecimalNumberHandler = NSDecimalNumberHandler(roundingMode: .RoundPlain, scale: 1, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: true)
        let result1 = LengthUnit(value: 1, type: .Metre) * 2
        XCTAssert(result1.metreValue == NSDecimalNumber.double(2), "expected 1, got \(result1.metreValue)")
        let result2 = 4 * LengthUnit(value: 1, type: .Metre)
        XCTAssert(result2.metreValue == NSDecimalNumber.double(4), "expected 1, got \(result2.metreValue)")
    }
    
    func testMultiplicationOfLengthUnitsWithHandlerOnEitherOperand() {
        var metre = LengthUnit(value: 1, type: .Metre)
        metre.decimalNumberHandler = NSDecimalNumberHandler(roundingMode: .RoundPlain, scale: 2, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: true)
        let mult1 = metre * 2
        XCTAssert(mult1.metreValue == NSDecimalNumber.double(2), "expected 1, got \(mult1.metreValue)")
        
        let mult2 = 3 * metre
        XCTAssert(mult2.metreValue == NSDecimalNumber.double(3), "expected 1, got \(mult2.metreValue)")
    }
    
    func testDivisionWithDouble() {
        let initialValue:Double = 1000
        let divValue = 2.5
        let acre = LengthUnit(value: initialValue, type: .Foot)
        let div = acre / divValue
        let number = div.footValue
        XCTAssert(number == NSDecimalNumber.double(initialValue / divValue), "expected \(initialValue / divValue) - got \(number)")
    }
    
    func testDivisionWithInteger() {
        let initialValue:Int = 2000
        let divValue = 4
        let hectare = LengthUnit(value: initialValue, type: .Foot)
        let div = hectare / divValue
        let number = div.footValue
        XCTAssert(number == NSDecimalNumber.integer(initialValue / divValue), "expected \(initialValue / divValue) - got \(number)")
    }
    
    // MARK: - Double and Int extensions
    
    func testMillimetreExtension() {
        XCTAssert(1.0.millimetres().millimetreValue == LengthUnit(value: 1.0, type: .Millimetre).millimetreValue)
        XCTAssert(1.millimetres().millimetreValue == LengthUnit(value: 1, type: .Millimetre).millimetreValue)
    }
    
    func testCentimetreExtension() {
        XCTAssert(1.0.centimetres().centimetreValue == LengthUnit(value: 1.0, type: .Centimetre).centimetreValue)
        XCTAssert(1.centimetres().centimetreValue == LengthUnit(value: 1, type: .Centimetre).centimetreValue)
    }
    
    func testMeterExtension() {
        XCTAssert(1.0.metres().metreValue == LengthUnit(value: 1.0, type: .Metre).metreValue)
        XCTAssert(1.metres().metreValue == LengthUnit(value: 1, type: .Metre).metreValue)
    }
    
    func testKilometerExtension() {
        XCTAssert(1.0.kilometres().kilometreValue == LengthUnit(value: 1.0, type: .Kilometre).kilometreValue)
        XCTAssert(1.kilometres().kilometreValue == LengthUnit(value: 1, type: .Kilometre).kilometreValue)
    }
    
    func testInchExtension() {
        XCTAssert(1.0.inches().inchValue == LengthUnit(value: 1.0, type: .Inch).inchValue)
        XCTAssert(1.inches().inchValue == LengthUnit(value: 1, type: .Inch).inchValue)
    }
    
    func testFootExtension() {
        XCTAssert(1.0.feet().footValue == LengthUnit(value: 1.0, type: .Foot).footValue)
        XCTAssert(1.feet().footValue == LengthUnit(value: 1, type: .Foot).footValue)
    }
    
    func testYardExtension() {
        XCTAssert(1.0.yards().yardValue == LengthUnit(value: 1.0, type: .Yard).yardValue)
        XCTAssert(1.yards().yardValue == LengthUnit(value: 1, type: .Yard).yardValue)
    }
    
    func testMileExtension() {
        XCTAssert(1.0.miles().mileValue == LengthUnit(value: 1.0, type: .Mile).mileValue)
        XCTAssert(1.miles().mileValue == LengthUnit(value: 1, type: .Mile).mileValue)
    }
    
    func testNauticalMileExtension() {
        XCTAssert(1.0.nauticalMiles().nauticalMileValue == LengthUnit(value: 1.0, type: .NauticalMile).nauticalMileValue)
        XCTAssert(1.nauticalMiles().nauticalMileValue == LengthUnit(value: 1, type: .NauticalMile).nauticalMileValue)
    }
}

