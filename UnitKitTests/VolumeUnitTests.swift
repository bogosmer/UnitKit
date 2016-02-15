//
//  VolumeUnitTests.swift
//  UnitKit
//
//  Created by Bo Gosmer on 10/02/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import XCTest
@testable import UnitKit

class VolumeUnitTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        VolumeUnit.sharedDecimalNumberHandler = nil
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // MARK: - VolumeUnit
    
    func testDecimalNumberInitializationUsingBaseUnitType() {
        let decimalValue = NSDecimalNumber.double(1)
        let volumeUnitValue = NSDecimalNumber(decimal: VolumeUnit(value: decimalValue, type: .Millilitre).baseUnitTypeValue)
        XCTAssert(volumeUnitValue == decimalValue, "expected \(decimalValue) - got \(volumeUnitValue)")
    }
    
    func testDoubleInitializationUsingBaseUnitType() {
        let value: Double = 1
        let decimalValue = NSDecimalNumber.double(value)
        let volumeUnitValue = NSDecimalNumber(decimal: VolumeUnit(value: value, type: .Millilitre).baseUnitTypeValue)
        XCTAssert(volumeUnitValue == decimalValue, "expected \(decimalValue) - got \(volumeUnitValue)")
    }
    
    func testIntInitializationUsingBaseUnitType() {
        let value: Int = 1
        let decimalValue = NSDecimalNumber.integer(value)
        let volumeUnitValue = NSDecimalNumber(decimal: VolumeUnit(value: value, type: .Millilitre).baseUnitTypeValue)
        XCTAssert(volumeUnitValue == decimalValue, "expected \(decimalValue) - got \(volumeUnitValue)")
    }
    
    func testIntInitializationUsingOtherUnitType() {
        let value: Int = 1
        let decimalValue = NSDecimalNumber.integer(value).decimalNumberByMultiplyingBy(VolumeUnitType.Litre.baseUnitTypePerUnit())
        let volumeUnitValue = NSDecimalNumber(decimal: VolumeUnit(value: value, type: .Litre).baseUnitTypeValue)
        XCTAssert(volumeUnitValue == decimalValue, "expected \(decimalValue) - got \(volumeUnitValue)")
    }
    
    func testDecimalNumberInitializationOthergBaseUnitType() {
        let value: Int = 1
        let decimalValue = NSDecimalNumber.double(1).decimalNumberByMultiplyingBy(VolumeUnitType.Pint.baseUnitTypePerUnit())
        let volumeUnitValue = NSDecimalNumber(decimal: VolumeUnit(value: value, type: .Pint).baseUnitTypeValue)
        XCTAssert(volumeUnitValue == decimalValue, "expected \(decimalValue) - got \(volumeUnitValue)")
    }
    
    func testDoubleInitializationUsingOtherUnitType() {
        let value: Double = 1
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByMultiplyingBy(VolumeUnitType.Gallon.baseUnitTypePerUnit())
        let volumeUnitValue = NSDecimalNumber(decimal: VolumeUnit(value: value, type: .Gallon).baseUnitTypeValue)
        XCTAssert(volumeUnitValue == decimalValue, "expected \(decimalValue) - got \(volumeUnitValue)")
    }
    
    func testMillilitreValue() {
        let value: Double = 1
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(VolumeUnitType.Millilitre.baseUnitTypePerUnit())
        let volumeUnit = VolumeUnit(value: value, type: .Millilitre).millilitreValue
        XCTAssert(volumeUnit == decimalValue, "expected \(decimalValue) - got \(volumeUnit)")
    }
    
    func testLitreValue() {
        let value: Double = 2
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(VolumeUnitType.Litre.baseUnitTypePerUnit())
        let volumeUnit = VolumeUnit(value: value, type: .Millilitre).litreValue
        XCTAssert(volumeUnit == decimalValue, "expected \(decimalValue) - got \(volumeUnit)")
    }
    
    func testCubicMetreValue() {
        let value: Double = 3
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(VolumeUnitType.CubicMetre.baseUnitTypePerUnit())
        let volumeUnit = VolumeUnit(value: value, type: .Millilitre).cubicMetreValue
        XCTAssert(volumeUnit == decimalValue, "expected \(decimalValue) - got \(volumeUnit)")
    }
    
    func testCubicInchValue() {
        let value: Double = 4
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(VolumeUnitType.CubicInch.baseUnitTypePerUnit())
        let volumeUnit = VolumeUnit(value: value, type: .Millilitre).cubicInchValue
        XCTAssert(volumeUnit == decimalValue, "expected \(decimalValue) - got \(volumeUnit)")
    }
    
    func testCubicFootValue() {
        let value: Double = 5
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(VolumeUnitType.CubicFoot.baseUnitTypePerUnit())
        let volumeUnit = VolumeUnit(value: value, type: .Millilitre).cubicFootValue
        XCTAssert(volumeUnit == decimalValue, "expected \(decimalValue) - got \(volumeUnit)")
    }
    
    func testFluidOunceValue() {
        let value: Double = 6
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(VolumeUnitType.FluidOunce.baseUnitTypePerUnit())
        let volumeUnit = VolumeUnit(value: value, type: .Millilitre).fluidOunceValue
        XCTAssert(volumeUnit == decimalValue, "expected \(decimalValue) - got \(volumeUnit)")
    }
    
    func testGillValue() {
        let value: Double = 7
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(VolumeUnitType.Gill.baseUnitTypePerUnit())
        let volumeUnit = VolumeUnit(value: value, type: .Millilitre).gillValue
        XCTAssert(volumeUnit == decimalValue, "expected \(decimalValue) - got \(volumeUnit)")
    }
    
    func testPintValue() {
        let value: Double = 8
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(VolumeUnitType.Pint.baseUnitTypePerUnit())
        let volumeUnit = VolumeUnit(value: value, type: .Millilitre).pintValue
        XCTAssert(volumeUnit == decimalValue, "expected \(decimalValue) - got \(volumeUnit)")
    }
    
    func testQuartValue() {
        let value: Double = 9
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(VolumeUnitType.Quart.baseUnitTypePerUnit())
        let volumeUnit = VolumeUnit(value: value, type: .Millilitre).quartValue
        XCTAssert(volumeUnit == decimalValue, "expected \(decimalValue) - got \(volumeUnit)")
    }
    
    func testGallonValue() {
        let value: Double = 10
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(VolumeUnitType.Gallon.baseUnitTypePerUnit())
        let volumeUnit = VolumeUnit(value: value, type: .Millilitre).gallonValue
        XCTAssert(volumeUnit == decimalValue, "expected \(decimalValue) - got \(volumeUnit)")
    }
    
    func testBushelValue() {
        let value: Double = 11
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(VolumeUnitType.Bushel.baseUnitTypePerUnit())
        let volumeUnit = VolumeUnit(value: value, type: .Millilitre).bushelValue
        XCTAssert(volumeUnit == decimalValue, "expected \(decimalValue) - got \(volumeUnit)")
    }
    
    func testUSFluidOunceValue() {
        let value: Double = 12
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(VolumeUnitType.USFluidOunce.baseUnitTypePerUnit())
        let volumeUnit = VolumeUnit(value: value, type: .Millilitre).usFluidOunceValue
        XCTAssert(volumeUnit == decimalValue, "expected \(decimalValue) - got \(volumeUnit)")
    }
    
    func testUSLiquidGillValue() {
        let value: Double = 13
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(VolumeUnitType.USLiquidGill.baseUnitTypePerUnit())
        let volumeUnit = VolumeUnit(value: value, type: .Millilitre).usLiquidGillValue
        XCTAssert(volumeUnit == decimalValue, "expected \(decimalValue) - got \(volumeUnit)")
    }
    
    func testUSLiquidPintValue() {
        let value: Double = 13
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(VolumeUnitType.USLiquidPint.baseUnitTypePerUnit())
        let volumeUnit = VolumeUnit(value: value, type: .Millilitre).usLiquidPintValue
        XCTAssert(volumeUnit == decimalValue, "expected \(decimalValue) - got \(volumeUnit)")
    }
    
    func testUSDryPintValue() {
        let value: Double = 13
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(VolumeUnitType.USDryPint.baseUnitTypePerUnit())
        let volumeUnit = VolumeUnit(value: value, type: .Millilitre).usDryPintValue
        XCTAssert(volumeUnit == decimalValue, "expected \(decimalValue) - got \(volumeUnit)")
    }
    
    func testUSLiquidQuartValue() {
        let value: Double = 13
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(VolumeUnitType.USLiquidQuart.baseUnitTypePerUnit())
        let volumeUnit = VolumeUnit(value: value, type: .Millilitre).usLiquidQuartValue
        XCTAssert(volumeUnit == decimalValue, "expected \(decimalValue) - got \(volumeUnit)")
    }
    
    func testUSDryQuartValue() {
        let value: Double = 13
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(VolumeUnitType.USDryQuart.baseUnitTypePerUnit())
        let volumeUnit = VolumeUnit(value: value, type: .Millilitre).usDryQuartValue
        XCTAssert(volumeUnit == decimalValue, "expected \(decimalValue) - got \(volumeUnit)")
    }
    
    func testUSLiquidGallonValue() {
        let value: Double = 13
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(VolumeUnitType.USLiquidGallon.baseUnitTypePerUnit())
        let volumeUnit = VolumeUnit(value: value, type: .Millilitre).usLiquidGallonValue
        XCTAssert(volumeUnit == decimalValue, "expected \(decimalValue) - got \(volumeUnit)")
    }
    
    func testUSDryGallonValue() {
        let value: Double = 13
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(VolumeUnitType.USDryGallon.baseUnitTypePerUnit())
        let volumeUnit = VolumeUnit(value: value, type: .Millilitre).usDryGallonValue
        XCTAssert(volumeUnit == decimalValue, "expected \(decimalValue) - got \(volumeUnit)")
    }
    
    func testUSBushelValue() {
        let value: Double = 13
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByDividingBy(VolumeUnitType.USBushel.baseUnitTypePerUnit())
        let volumeUnit = VolumeUnit(value: value, type: .Millilitre).usBushelValue
        XCTAssert(volumeUnit == decimalValue, "expected \(decimalValue) - got \(volumeUnit)")
    }
    
    func testConversionExample() {
        let value: Double = 1
        let decimalValue = NSDecimalNumber.double(value).decimalNumberByMultiplyingBy(VolumeUnitType.USBushel.baseUnitTypePerUnit()).decimalNumberByDividingBy(VolumeUnitType.Bushel.baseUnitTypePerUnit())
        let volumeUnit = VolumeUnit(value: value, type: .USBushel).bushelValue
        XCTAssert(volumeUnit == decimalValue, "expected \(decimalValue) - got \(volumeUnit)")
    }
    
    func testSharedDecimalNumberHandler() {
        VolumeUnit.sharedDecimalNumberHandler = NSDecimalNumberHandler(roundingMode: .RoundPlain, scale: 2, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: false)
        
        let value = 1.2345
        let volumeUnitValue = VolumeUnit(value: value, type: .Millilitre)
        XCTAssert(VolumeUnit.sharedDecimalNumberHandler != nil)
        XCTAssert(NSDecimalNumber(decimal: volumeUnitValue.baseUnitTypeValue) == NSDecimalNumber.double(1.23), "expected 1.23 - got \(NSDecimalNumber(decimal: volumeUnitValue.baseUnitTypeValue))")
    }
    
    func testInstanceDecimalNumberHandler() {
        let value = 9.8765
        var volumeUnit = VolumeUnit(value: value, type: .Millilitre)
        volumeUnit.decimalNumberHandler = NSDecimalNumberHandler(roundingMode: .RoundPlain, scale: 2, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: false)
        let baseUnitTypeValue = NSDecimalNumber(decimal: volumeUnit.baseUnitTypeValue)
        XCTAssert(NSDecimalNumber.double(value) == baseUnitTypeValue, "expected \(value) - got \(baseUnitTypeValue)")
    }
    
    // MARK: - CustomStringConvertible
    
    func testDescription() {
        let unit = VolumeUnit(value: 1, type: .Litre)
        XCTAssert(unit.description == "1 litre", "expected 1 litre - got \(unit.description)")
    }
    
    // MARK: - Localization
    
    func testLocalizedName() {
        let unitSingle = VolumeUnit(value: 1, type: .Millilitre)
        XCTAssert(unitSingle.localizedNameOfUnitType(NSLocale(localeIdentifier: "en")) == "millilitre")
        XCTAssert(unitSingle.localizedNameOfUnitType(NSLocale(localeIdentifier: "da")) == "milliliter")
        
        let unitPlural = VolumeUnit(value: 2, type: .Millilitre)
        XCTAssert(unitPlural.localizedNameOfUnitType(NSLocale(localeIdentifier: "en")) == "millilitres")
        XCTAssert(unitPlural.localizedNameOfUnitType(NSLocale(localeIdentifier: "da")) == "milliliter")
    }
    
    func testLocalizedAbbreviation() {
        let unitSingle = VolumeUnit(value: 1, type: .Millilitre)
        XCTAssert(unitSingle.localizedAbbreviationOfUnitType(nil) == "ml")
        XCTAssert(unitSingle.localizedAbbreviationOfUnitType(NSLocale(localeIdentifier: "en")) == "ml")
        XCTAssert(unitSingle.localizedAbbreviationOfUnitType(NSLocale(localeIdentifier: "da")) == "ml")
        
        let unitPlural = VolumeUnit(value: 2, type: .Millilitre)
        XCTAssert(unitPlural.localizedAbbreviationOfUnitType(nil) == "ml")
        XCTAssert(unitPlural.localizedAbbreviationOfUnitType(NSLocale(localeIdentifier: "en")) == "ml")
        XCTAssert(unitPlural.localizedAbbreviationOfUnitType(NSLocale(localeIdentifier: "da")) == "ml")
    }
    
    // MARK: - Arithmetic
    
    func testAdditionOfVolumeUnits() {
        let litre = VolumeUnit(value: 1, type: .Litre)
        let millilitre = VolumeUnit(value: 1, type: .Millilitre)
        let addition = litre + millilitre
        let number = addition.litreValue
        XCTAssert(addition.unitType == VolumeUnitType.Litre, "expected \(VolumeUnitType.Litre) - got \(addition.unitType)")
        XCTAssert(number == NSDecimalNumber.double(1.001), "expected 1.001, got \(number)")
    }
    
    func testAdditionWithDouble() {
        let initialValue:Double = 1245
        let additionValue = 2.5
        let cubicInch = VolumeUnit(value: initialValue, type: .CubicInch)
        let addition = cubicInch + additionValue
        let number = addition.cubicInchValue
        XCTAssert(number == NSDecimalNumber.double(initialValue + additionValue), "expected \(initialValue + additionValue) - got \(number)")
    }
    
    func testAdditionWithInteger() {
        let initialValue:Int = 967235
        let additionValue = 254
        let cubicFoot = VolumeUnit(value: initialValue, type: .CubicFoot)
        let addition = cubicFoot + additionValue
        let number = addition.cubicFootValue
        XCTAssert(number == NSDecimalNumber.integer(initialValue + additionValue), "expected \(initialValue + additionValue) - got \(number)")
    }
    
    func testSubtractionOfVolumeUnits() {
        let m2 = VolumeUnit(value: 1, type: .Litre)
        let cm2 = VolumeUnit(value: 1, type: .Millilitre)
        var subtraction = m2 - cm2
        var number = subtraction.litreValue
        XCTAssert(subtraction.unitType == VolumeUnitType.Litre, "expected \(VolumeUnitType.Litre) - got \(subtraction.unitType)")
        XCTAssert(number == NSDecimalNumber.double(0.999), "expected 0.999, got \(number)")
        subtraction = cm2 - m2
        number = subtraction.millilitreValue
        XCTAssert(subtraction.unitType == VolumeUnitType.Millilitre, "expected \(VolumeUnitType.Millilitre) - got \(subtraction.unitType)")
        XCTAssert(number == NSDecimalNumber.double(-999), "expected -999, got \(number)")
    }
    
    func testSubtractionWithDouble() {
        let initialValue:Double = 1245
        let subtractionValue = 2.5
        let acre = VolumeUnit(value: initialValue, type: .CubicInch)
        let subtraction = acre - subtractionValue
        let number = subtraction.cubicInchValue
        XCTAssert(number == NSDecimalNumber.double(initialValue - subtractionValue), "expected \(initialValue - subtractionValue) - got \(number)")
    }
    
    func testSubtractionWithInteger() {
        let initialValue:Int = 967235
        let subtractionValue = 254
        let hectare = VolumeUnit(value: initialValue, type: .CubicInch)
        let subtraction = hectare - subtractionValue
        let number = subtraction.cubicInchValue
        XCTAssert(number == NSDecimalNumber.integer(initialValue - subtractionValue), "expected \(initialValue - subtractionValue) - got \(number)")
    }
    
    func testMultiplicationWithDouble() {
        let initialValue:Double = 1000
        let factor = 2.5
        let acre = VolumeUnit(value: initialValue, type: .CubicInch)
        let mult = acre * factor
        let number = mult.cubicInchValue
        XCTAssert(number == NSDecimalNumber.double(initialValue * factor), "expected \(initialValue * factor) - got \(number)")
    }
    
    func testMultiplicationWithInteger() {
        let initialValue:Int = 1000
        let multiplicationValue = 3
        let hectare = VolumeUnit(value: initialValue, type: .CubicInch)
        let mult = hectare * multiplicationValue
        let number = mult.cubicInchValue
        XCTAssert(number == NSDecimalNumber.integer(initialValue * multiplicationValue), "expected \(initialValue * multiplicationValue) - got \(number)")
    }
    
    func testDivisionWithDouble() {
        let initialValue:Double = 1000
        let divValue = 2.5
        let acre = VolumeUnit(value: initialValue, type: .CubicInch)
        let div = acre / divValue
        let number = div.cubicInchValue
        XCTAssert(number == NSDecimalNumber.double(initialValue / divValue), "expected \(initialValue / divValue) - got \(number)")
    }
    
    func testDivisionWithInteger() {
        let initialValue:Int = 2000
        let divValue = 4
        let hectare = VolumeUnit(value: initialValue, type: .CubicInch)
        let div = hectare / divValue
        let number = div.cubicInchValue
        XCTAssert(number == NSDecimalNumber.integer(initialValue / divValue), "expected \(initialValue / divValue) - got \(number)")
    }
    
    // MARK: - Double and Int extensions
    
    func testMillilitreExtension() {
        XCTAssert(1.0.millilitres().millilitreValue == VolumeUnit(value: 1.0, type: .Millilitre).millilitreValue)
        XCTAssert(1.millilitres().millilitreValue == VolumeUnit(value: 1, type: .Millilitre).millilitreValue)
    }
    
    func testLitreExtension() {
        XCTAssert(1.0.litres().litreValue == VolumeUnit(value: 1.0, type: .Litre).litreValue)
        XCTAssert(1.litres().litreValue == VolumeUnit(value: 1, type: .Litre).litreValue)
    }
    
    func testCubicMetreExtension() {
        XCTAssert(1.0.cubicMetres().cubicMetreValue == VolumeUnit(value: 1.0, type: .CubicMetre).cubicMetreValue)
        XCTAssert(1.cubicMetres().cubicMetreValue == VolumeUnit(value: 1, type: .CubicMetre).cubicMetreValue)
    }
    
    func testCubicInchExtension() {
        XCTAssert(1.0.cubicInches().cubicInchValue == VolumeUnit(value: 1.0, type: .CubicInch).cubicInchValue)
        XCTAssert(1.cubicInches().cubicInchValue == VolumeUnit(value: 1, type: .CubicInch).cubicInchValue)
    }
    
    func testCubicFootExtension() {
        XCTAssert(1.0.cubicFeet().cubicFootValue == VolumeUnit(value: 1.0, type: .CubicFoot).cubicFootValue)
        XCTAssert(1.cubicFeet().cubicFootValue == VolumeUnit(value: 1, type: .CubicFoot).cubicFootValue)
    }
    
    func testFluidOunceExtension() {
        XCTAssert(1.0.fluidOunces().fluidOunceValue == VolumeUnit(value: 1.0, type: .FluidOunce).fluidOunceValue)
        XCTAssert(1.fluidOunces().fluidOunceValue == VolumeUnit(value: 1, type: .FluidOunce).fluidOunceValue)
    }
    
    func testGillExtension() {
        XCTAssert(1.0.gills().gillValue == VolumeUnit(value: 1.0, type: .Gill).gillValue)
        XCTAssert(1.gills().gillValue == VolumeUnit(value: 1, type: .Gill).gillValue)
    }
    
    func testPintExtension() {
        XCTAssert(1.0.pints().pintValue == VolumeUnit(value: 1.0, type: .Pint).pintValue)
        XCTAssert(1.pints().pintValue == VolumeUnit(value: 1, type: .Pint).pintValue)
    }
    
    func testQuartExtension() {
        XCTAssert(1.0.quarts().quartValue == VolumeUnit(value: 1.0, type: .Quart).quartValue)
        XCTAssert(1.quarts().quartValue == VolumeUnit(value: 1, type: .Quart).quartValue)
    }
    
    func testGallonExtension() {
        XCTAssert(1.0.gallons().gallonValue == VolumeUnit(value: 1.0, type: .Gallon).gallonValue)
        XCTAssert(1.gallons().gallonValue == VolumeUnit(value: 1, type: .Gallon).gallonValue)
    }
    
    func testBushelExtension() {
        XCTAssert(1.0.bushels().bushelValue == VolumeUnit(value: 1.0, type: .Bushel).bushelValue)
        XCTAssert(1.bushels().bushelValue == VolumeUnit(value: 1, type: .Bushel).bushelValue)
    }
    
    func testUSFluidOunceExtension() {
        XCTAssert(1.0.usFluidOunces().usFluidOunceValue == VolumeUnit(value: 1.0, type: .USFluidOunce).usFluidOunceValue)
        XCTAssert(1.usFluidOunces().usFluidOunceValue == VolumeUnit(value: 1, type: .USFluidOunce).usFluidOunceValue)
    }
    
    func testUSLiquidGillExtension() {
        XCTAssert(1.0.usLiquidGills().usLiquidGillValue == VolumeUnit(value: 1.0, type: .USLiquidGill).usLiquidGillValue)
        XCTAssert(1.usLiquidGills().usLiquidGillValue == VolumeUnit(value: 1, type: .USLiquidGill).usLiquidGillValue)
    }
    
    func testUSLiquidPintExtension() {
        XCTAssert(1.0.usLiquidPints().usLiquidPintValue == VolumeUnit(value: 1.0, type: .USLiquidPint).usLiquidPintValue)
        XCTAssert(1.usLiquidPints().usLiquidPintValue == VolumeUnit(value: 1, type: .USLiquidPint).usLiquidPintValue)
    }
    
    func testUSDryPintExtension() {
        XCTAssert(1.0.usDryPints().usDryPintValue == VolumeUnit(value: 1.0, type: .USDryPint).usDryPintValue)
        XCTAssert(1.usDryPints().usDryPintValue == VolumeUnit(value: 1, type: .USDryPint).usDryPintValue)
    }
    
    func testUSLiquidQuartExtension() {
        XCTAssert(1.0.usLiquidQuarts().usLiquidQuartValue == VolumeUnit(value: 1.0, type: .USLiquidQuart).usLiquidQuartValue)
        XCTAssert(1.usLiquidQuarts().usLiquidQuartValue == VolumeUnit(value: 1, type: .USLiquidQuart).usLiquidQuartValue)
    }
    
    func testUSDryQuartExtension() {
        XCTAssert(1.0.usDryQuarts().usDryQuartValue == VolumeUnit(value: 1.0, type: .USDryQuart).usDryQuartValue)
        XCTAssert(1.usDryQuarts().usDryQuartValue == VolumeUnit(value: 1, type: .USDryQuart).usDryQuartValue)
    }
    
    func testUSLiquidGallonExtension() {
        XCTAssert(1.0.usLiquidGallons().usLiquidGallonValue == VolumeUnit(value: 1.0, type: .USLiquidGallon).usLiquidGallonValue)
        XCTAssert(1.usLiquidGallons().usLiquidGallonValue == VolumeUnit(value: 1, type: .USLiquidGallon).usLiquidGallonValue)
    }
    
    func testUSDryGallonExtension() {
        XCTAssert(1.0.usDryGallons().usDryGallonValue == VolumeUnit(value: 1.0, type: .USDryGallon).usDryGallonValue)
        XCTAssert(1.usDryGallons().usDryGallonValue == VolumeUnit(value: 1, type: .USDryGallon).usDryGallonValue)
    }
    
    func testUSBushelExtension() {
        XCTAssert(1.0.usBushels().usBushelValue == VolumeUnit(value: 1.0, type: .USBushel).usBushelValue)
        XCTAssert(1.usBushels().usBushelValue == VolumeUnit(value: 1, type: .USBushel).usBushelValue)
    }
}

