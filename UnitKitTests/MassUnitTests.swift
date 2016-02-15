//
//  UnitKitTests.swift
//  UnitKitTests
//
//  Created by Bo Gosmer on 20/01/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import XCTest
@testable import UnitKit

class MassUnitTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        MassUnit.sharedDecimalNumberHandler = nil
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // MARK: - MassUnit
    
    func testDecimalNumberInitializationUsingBaseUnitType() {
        let decimalValue = NSDecimalNumber.double(1)
        let massUnitValue = NSDecimalNumber(decimal: MassUnit(value: decimalValue, type: .Gram).baseUnitTypeValue)
        XCTAssert(massUnitValue == decimalValue, "expected \(decimalValue) - got \(massUnitValue)")
    }
    
    func testDoubleInitializationUsingBaseUnitType() {
        let value: Double = 1
        let decimalValue = NSDecimalNumber.double(value)
        let massUnitValue = NSDecimalNumber(decimal: MassUnit(value: value, type: .Gram).baseUnitTypeValue)
        XCTAssert(massUnitValue == decimalValue, "expected \(decimalValue) - got \(massUnitValue)")
    }
    
    func testIntInitializationUsingBaseUnitType() {
        let value: Int = 1
        let decimalValue = NSDecimalNumber.integer(value)
        let massUnitValue = NSDecimalNumber(decimal: MassUnit(value: value, type: .Gram).baseUnitTypeValue)
        XCTAssert(massUnitValue == decimalValue, "expected \(decimalValue) - got \(massUnitValue)")
    }
    
    func testIntInitializationUsingOtherUnitType() {
        let value: Int = 1
        let decimalValue = NSDecimalNumber.integer(value).decimalNumberByMultiplyingBy(MassUnitType.Kilo.baseUnitTypePerUnit())
        let massUnitValue = NSDecimalNumber(decimal: MassUnit(value: value, type: .Kilo).baseUnitTypeValue)
        XCTAssert(massUnitValue == decimalValue, "expected \(decimalValue) - got \(massUnitValue)")
    }
    
    func testDecimalNumberInitializationOthergBaseUnitType() {
        let value: Int = 1
        let decimalValue = NSDecimalNumber.double(1).decimalNumberByMultiplyingBy(MassUnitType.Pound.baseUnitTypePerUnit())
        let massUnitValue = NSDecimalNumber(decimal: MassUnit(value: value, type: .Pound).baseUnitTypeValue)
        XCTAssert(massUnitValue == decimalValue, "expected \(decimalValue) - got \(massUnitValue)")
    }
    
    func testDoubleInitializationUsingOtherUnitType() {
        let value: Double = 1
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByMultiplyingBy(MassUnitType.ShortTon.baseUnitTypePerUnit())
        let massUnitValue = NSDecimalNumber(decimal: MassUnit(value: value, type: .ShortTon).baseUnitTypeValue)
        XCTAssert(massUnitValue == decimalValue, "expected \(decimalValue) - got \(massUnitValue)")
    }
    
    func testMilligramValue() {
        let value: Double = 1
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(MassUnitType.Milligram.baseUnitTypePerUnit())
        let massUnit = MassUnit(value: value, type: .Gram).milligramValue
        XCTAssert(massUnit == decimalValue, "expected \(decimalValue) - got \(massUnit)")
    }
    
    func testKiloValue() {
        let value: Double = 2
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(MassUnitType.Kilo.baseUnitTypePerUnit())
        let massUnit = MassUnit(value: value, type: .Gram).kiloValue
        XCTAssert(massUnit == decimalValue, "expected \(decimalValue) - got \(massUnit)")
    }
    
    func testTonneValue() {
        let value: Double = 3
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(MassUnitType.Tonne.baseUnitTypePerUnit())
        let massUnit = MassUnit(value: value, type: .Gram).tonneValue
        XCTAssert(massUnit == decimalValue, "expected \(decimalValue) - got \(massUnit)")
    }
    
    func testGrainValue() {
        let value: Double = 4
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(MassUnitType.Grain.baseUnitTypePerUnit())
        let massUnit = MassUnit(value: value, type: .Gram).grainValue
        XCTAssert(massUnit == decimalValue, "expected \(decimalValue) - got \(massUnit)")
    }
    
    func testDramValue() {
        let value: Double = 5
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(MassUnitType.Dram.baseUnitTypePerUnit())
        let massUnit = MassUnit(value: value, type: .Gram).dramValue
        XCTAssert(massUnit == decimalValue, "expected \(decimalValue) - got \(massUnit)")
    }
    
    func testOunceValue() {
        let value: Double = 6
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(MassUnitType.Ounce.baseUnitTypePerUnit())
        let massUnit = MassUnit(value: value, type: .Gram).ounceValue
        XCTAssert(massUnit == decimalValue, "expected \(decimalValue) - got \(massUnit)")
    }
    
    func testPoundValue() {
        let value: Double = 7
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(MassUnitType.Pound.baseUnitTypePerUnit())
        let massUnit = MassUnit(value: value, type: .Gram).poundValue
        XCTAssert(massUnit == decimalValue, "expected \(decimalValue) - got \(massUnit)")
    }
    
    func testStoneValue() {
        let value: Double = 8
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(MassUnitType.Stone.baseUnitTypePerUnit())
        let massUnit = MassUnit(value: value, type: .Gram).stoneValue
        XCTAssert(massUnit == decimalValue, "expected \(decimalValue) - got \(massUnit)")
    }
    
    func testQuarterValue() {
        let value: Double = 9
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(MassUnitType.Quarter.baseUnitTypePerUnit())
        let massUnit = MassUnit(value: value, type: .Gram).quarterValue
        XCTAssert(massUnit == decimalValue, "expected \(decimalValue) - got \(massUnit)")
    }
    
    func testLongHundredWeightValue() {
        let value: Double = 10
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(MassUnitType.LongHundredweight.baseUnitTypePerUnit())
        let massUnit = MassUnit(value: value, type: .Gram).longHundredweightValue
        XCTAssert(massUnit == decimalValue, "expected \(decimalValue) - got \(massUnit)")
    }
    
    func testLongTonValue() {
        let value: Double = 11
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(MassUnitType.LongTon.baseUnitTypePerUnit())
        let massUnit = MassUnit(value: value, type: .Gram).longTonValue
        XCTAssert(massUnit == decimalValue, "expected \(decimalValue) - got \(massUnit)")
    }
    
    func testShortHundredWeightValue() {
        let value: Double = 12
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(MassUnitType.ShortHundredweight.baseUnitTypePerUnit())
        let massUnit = MassUnit(value: value, type: .Gram).shortHundredweightValue
        XCTAssert(massUnit == decimalValue, "expected \(decimalValue) - got \(massUnit)")
    }
    
    func testShortTonValue() {
        let value: Double = 13
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(MassUnitType.ShortTon.baseUnitTypePerUnit())
        let massUnit = MassUnit(value: value, type: .Gram).shortTonValue
        XCTAssert(massUnit == decimalValue, "expected \(decimalValue) - got \(massUnit)")
    }
    
    func testConversionExample() {
        let value: Double = 1
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByMultiplyingBy(MassUnitType.ShortTon.baseUnitTypePerUnit()).decimalNumberByDividingBy(MassUnitType.LongTon.baseUnitTypePerUnit())
        let massUnit = MassUnit(value: value, type: .ShortTon).longTonValue
        XCTAssert(massUnit == decimalValue, "expected \(decimalValue) - got \(massUnit)")
    }

    func testSharedDecimalNumberHandler() {
        MassUnit.sharedDecimalNumberHandler = NSDecimalNumberHandler(roundingMode: .RoundPlain, scale: 2, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: false)
        
        let value = 1.2345
        let massUnitValue = MassUnit(value: value, type: .Gram)
        XCTAssert(NSDecimalNumber(decimal: massUnitValue.baseUnitTypeValue) == NSDecimalNumber.double(1.23), "expected 1.23 - got \(NSDecimalNumber(decimal: massUnitValue.baseUnitTypeValue))")
    }
    
    func testInstanceDecimalNumberHandler() {
        let instanceNumberHandler = NSDecimalNumberHandler(roundingMode: .RoundPlain, scale: 2, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: false)
        let value = 9.8765
        var massUnit = MassUnit(value: value, type: .Gram)
        massUnit.decimalNumberHandler = instanceNumberHandler
        let baseUnitTypeValue = NSDecimalNumber(decimal: massUnit.baseUnitTypeValue)
        XCTAssert(NSDecimalNumber.double(value) == baseUnitTypeValue, "expected \(value) - got \(baseUnitTypeValue)")
        XCTAssert(massUnit.gramValue == NSDecimalNumber.double(value).decimalNumberByRoundingAccordingToBehavior(instanceNumberHandler), "expected \(value) - got \(baseUnitTypeValue)")
        
        MassUnit.sharedDecimalNumberHandler = NSDecimalNumberHandler(roundingMode: .RoundUp, scale: 2, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: false)
        XCTAssert(massUnit.gramValue == NSDecimalNumber.double(value).decimalNumberByRoundingAccordingToBehavior(instanceNumberHandler), "expected \(value) - got \(baseUnitTypeValue)")
    }
    
    // MARK: - CustomStringConvertible
    
    func testDescription() {
        let unit = MassUnit(value: -1, type: .Kilo)
        XCTAssert(unit.description == "-1 kilo", "got \(unit.description)")
    }
    
    // MARK: - Localization
    
    func testLocalizedName() {
        let unitSingle = MassUnit(value: -1, type: .Pound)
        XCTAssert(unitSingle.localizedNameOfUnitType(NSLocale(localeIdentifier: "en")) == "pound")
        XCTAssert(unitSingle.localizedNameOfUnitType(NSLocale(localeIdentifier: "da")) == "pund")
        
        let unitPlural = MassUnit(value: -2, type: .Pound)
        XCTAssert(unitPlural.localizedNameOfUnitType(NSLocale(localeIdentifier: "en")) == "pounds")
        XCTAssert(unitPlural.localizedNameOfUnitType(NSLocale(localeIdentifier: "da")) == "pund")
    }
    
    func testLocalizedAbbreviation() {
        let unitSingle = MassUnit(value: -1, type: .Pound)
        XCTAssert(unitSingle.localizedAbbreviationOfUnitType(nil) == "lb")
        XCTAssert(unitSingle.localizedAbbreviationOfUnitType(NSLocale(localeIdentifier: "en")) == "lb")
        XCTAssert(unitSingle.localizedAbbreviationOfUnitType(NSLocale(localeIdentifier: "da")) == "lb")
        
        let unitPlural = MassUnit(value: -2, type: .Pound)
        XCTAssert(unitPlural.localizedAbbreviationOfUnitType(nil) == "lbs")
        XCTAssert(unitPlural.localizedAbbreviationOfUnitType(NSLocale(localeIdentifier: "en")) == "lbs")
        XCTAssert(unitPlural.localizedAbbreviationOfUnitType(NSLocale(localeIdentifier: "da")) == "lbs")
    }
    
    // MARK: - Arithmetic
    
    func testAdditionOfMassUnits() {
        let kgs = MassUnit(value: 1, type: .Kilo)
        let grams = MassUnit(value: 1, type: .Gram)
        let addition = kgs + grams
        let number = addition.kiloValue
        XCTAssert(addition.unitType == MassUnitType.Kilo, "expected \(MassUnitType.Kilo) - got \(addition.unitType)")
        XCTAssert(number == NSDecimalNumber.double(1.001), "expected 1.001, got \(number)")
    }
    
    func testAdditionWithDouble() {
        let initialValue:Double = 1245
        let additionValue = 2.5
        let pound = MassUnit(value: initialValue, type: .Pound)
        let addition = pound + additionValue
        let number = addition.poundValue
        XCTAssert(number == NSDecimalNumber.double(initialValue + additionValue), "expected \(initialValue + additionValue) - got \(number)")
    }
    
    func testAdditionWithInteger() {
        let initialValue:Int = 967235
        let additionValue = 254
        let pound = MassUnit(value: initialValue, type: .Pound)
        let addition = pound + additionValue
        let number = addition.poundValue
        XCTAssert(number == NSDecimalNumber.integer(initialValue + additionValue), "expected \(initialValue + additionValue) - got \(number)")
    }
    
    func testSubtractionOfMassUnits() {
        let m2 = MassUnit(value: 1, type: .Kilo)
        let cm2 = MassUnit(value: 1, type: .Gram)
        var subtraction = m2 - cm2
        var number = subtraction.kiloValue
        XCTAssert(subtraction.unitType == MassUnitType.Kilo, "expected \(MassUnitType.Kilo) - got \(subtraction.unitType)")
        XCTAssert(number == NSDecimalNumber.double(0.999), "expected 0.999, got \(number)")
        subtraction = cm2 - m2
        number = subtraction.gramValue
        XCTAssert(subtraction.unitType == MassUnitType.Gram, "expected \(MassUnitType.Gram) - got \(subtraction.unitType)")
        XCTAssert(number == NSDecimalNumber.double(-999), "expected -999, got \(number)")
    }
    
    func testSubtractionWithDouble() {
        let initialValue:Double = 1245
        let subtractionValue = 2.5
        let acre = MassUnit(value: initialValue, type: .Pound)
        let subtraction = acre - subtractionValue
        let number = subtraction.poundValue
        XCTAssert(number == NSDecimalNumber.double(initialValue - subtractionValue), "expected \(initialValue - subtractionValue) - got \(number)")
    }
    
    func testSubtractionWithInteger() {
        let initialValue:Int = 967235
        let subtractionValue = 254
        let hectare = MassUnit(value: initialValue, type: .Pound)
        let subtraction = hectare - subtractionValue
        let number = subtraction.poundValue
        XCTAssert(number == NSDecimalNumber.integer(initialValue - subtractionValue), "expected \(initialValue - subtractionValue) - got \(number)")
    }
    
    func testMultiplicationWithDouble() {
        let initialValue:Double = 1000
        let factor = 2.5
        let acre = MassUnit(value: initialValue, type: .Pound)
        let mult = acre * factor
        let number = mult.poundValue
        XCTAssert(number == NSDecimalNumber.double(initialValue * factor), "expected \(initialValue * factor) - got \(number)")
    }
    
    func testMultiplicationWithInteger() {
        let initialValue:Int = 1000
        let multiplicationValue = 3
        let hectare = MassUnit(value: initialValue, type: .Pound)
        let mult = hectare * multiplicationValue
        let number = mult.poundValue
        XCTAssert(number == NSDecimalNumber.integer(initialValue * multiplicationValue), "expected \(initialValue * multiplicationValue) - got \(number)")
    }
    
    func testDivisionWithDouble() {
        let initialValue:Double = 1000
        let divValue = 2.5
        let acre = MassUnit(value: initialValue, type: .Pound)
        let div = acre / divValue
        let number = div.poundValue
        XCTAssert(number == NSDecimalNumber.double(initialValue / divValue), "expected \(initialValue / divValue) - got \(number)")
    }
    
    func testDivisionWithInteger() {
        let initialValue:Int = 2000
        let divValue = 4
        let hectare = MassUnit(value: initialValue, type: .Pound)
        let div = hectare / divValue
        let number = div.poundValue
        XCTAssert(number == NSDecimalNumber.integer(initialValue / divValue), "expected \(initialValue / divValue) - got \(number)")
    }
    
    // MARK: - Double and Int extensions
    
    func testMilligramExtension() {
        XCTAssert(1.0.milligrams().milligramValue == MassUnit(value: 1.0, type: .Milligram).milligramValue)
        XCTAssert(1.milligrams().milligramValue == MassUnit(value: 1, type: .Milligram).milligramValue)
    }
    
    func testGramExtension() {
        XCTAssert(1.0.grams().gramValue == MassUnit(value: 1.0, type: .Gram).gramValue)
        XCTAssert(1.grams().gramValue == MassUnit(value: 1, type: .Gram).gramValue)
    }
    
    func testKiloExtension() {
        XCTAssert(1.0.kilos().kiloValue == MassUnit(value: 1.0, type: .Kilo).kiloValue)
        XCTAssert(1.kilos().kiloValue == MassUnit(value: 1, type: .Kilo).kiloValue)
    }
    
    func testTonneExtension() {
        XCTAssert(1.0.tonnes().tonneValue == MassUnit(value: 1.0, type: .Tonne).tonneValue)
        XCTAssert(1.tonnes().tonneValue == MassUnit(value: 1, type: .Tonne).tonneValue)
    }
    
    func testGrainExtension() {
        XCTAssert(1.0.grains().grainValue == MassUnit(value: 1.0, type: .Grain).grainValue)
        XCTAssert(1.grains().grainValue == MassUnit(value: 1, type: .Grain).grainValue)
    }
    
    func testDramExtension() {
        XCTAssert(1.0.drams().dramValue == MassUnit(value: 1.0, type: .Dram).dramValue)
        XCTAssert(1.drams().dramValue == MassUnit(value: 1, type: .Dram).dramValue)
    }
    
    func testOunceExtension() {
        XCTAssert(1.0.ounces().ounceValue == MassUnit(value: 1.0, type: .Ounce).ounceValue)
        XCTAssert(1.ounces().ounceValue == MassUnit(value: 1, type: .Ounce).ounceValue)
    }
    
    func testPoundExtension() {
        XCTAssert(1.0.pounds().poundValue == MassUnit(value: 1.0, type: .Pound).poundValue)
        XCTAssert(1.pounds().poundValue == MassUnit(value: 1, type: .Pound).poundValue)
    }
    
    func testStoneExtension() {
        XCTAssert(1.0.stones().stoneValue == MassUnit(value: 1.0, type: .Stone).stoneValue)
        XCTAssert(1.stones().stoneValue == MassUnit(value: 1, type: .Stone).stoneValue)
    }
    
    func testQuarterExtension() {
        XCTAssert(1.0.quarters().quarterValue == MassUnit(value: 1.0, type: .Quarter).quarterValue)
        XCTAssert(1.quarters().quarterValue == MassUnit(value: 1, type: .Quarter).quarterValue)
    }
    
    func testLongHundredWeightExtension() {
        XCTAssert(1.0.longHundredweights().longHundredweightValue == MassUnit(value: 1.0, type: .LongHundredweight).longHundredweightValue)
        XCTAssert(1.longHundredweights().longHundredweightValue == MassUnit(value: 1, type: .LongHundredweight).longHundredweightValue)
    }
    
    func testLongTonExtension() {
        XCTAssert(1.0.longTons().longTonValue == MassUnit(value: 1.0, type: .LongTon).longTonValue)
        XCTAssert(1.longTons().longTonValue == MassUnit(value: 1, type: .LongTon).longTonValue)
    }
    
    func testShortHundredWeightExtension() {
        XCTAssert(1.0.shortHundredweights().shortHundredweightValue == MassUnit(value: 1.0, type: .ShortHundredweight).shortHundredweightValue)
        XCTAssert(1.shortHundredweights().shortHundredweightValue == MassUnit(value: 1, type: .ShortHundredweight).shortHundredweightValue)
    }
    
    func testShortTonExtension() {
        XCTAssert(1.0.shortTons().shortTonValue == MassUnit(value: 1.0, type: .ShortTon).shortTonValue)
        XCTAssert(1.shortTons().shortTonValue == MassUnit(value: 1, type: .ShortTon).shortTonValue)
    }
}
