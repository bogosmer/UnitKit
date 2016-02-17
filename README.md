#UnitKit

[![Build Status](https://travis-ci.org/bogosmer/UnitKit.svg)](https://travis-ci.org/bogosmer/UnitKit)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/UnitKit.svg)](https://img.shields.io/cocoapods/v/UnitKit.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/UnitKit/UnitKit)
[![Platform](https://img.shields.io/cocoapods/p/UnitKit.svg?style=flat)](http://cocoadocs.org/docsets/UnitKit)

Convenience for units of measurement written in Swift

---

###Motivation

Basically I wanted to be able to do easy conversion from metric to imperial units really easy and precise. I wasn't able to find an exsting framework that I wanted to use, so I decided to try and make it myself. 

It hasn't been battle tested yet, but my hope is that it will feel good when I actually start using it. However it may mean that the API won't be compatible within major versions, since I may discover things that needs to be changed to make it better.

###Installation

UnitKit supports both CocoaPods and Carthage

#####CocoaPods

To get the newest version up until there is a a version 1.0, put this in your Podfile

```
pod 'UnitKit', '~> 0.1'
```

#####Carthage

Similarly with Carthage, to get the newest version up until version 1.0, put this in your Cartfile

```
github "bogosmer/UnitKit" ~> 0.1
```

###Platforms

The supported platforms listed here are the deployment targets listed in the Xcode project. It may be possible to use it on earlier versions.

- iOS 8.0+
- OS X 10.11+
- watchOS 2.0+
- tvOS 9.1+

###Usage

It's basically just wrapping an NSDecimal within a struct along with an enum that specifies the type. The rest is just convenience.

#####Unit and UnitType

There are 4 kinds of units implemented:

- AreaUnit
- LengthUnit
- MassUnit
- VolumeUnit

Each has an associated enum:

- AreaUnitType
- LengthUnitType
- MassUnitType
- VolumeUnitType

An instance of a unit is created using one of their 3 initializers that take a value and a type, or by using one of the convience methods in the extenstions mentioned below. 

For example:

```
// NSDecimalNumber
let decimalNumber: NSDecimalNumber
let squareMeter = AreaUnit(value: decimalNumber, type: .SquareMetre)

// Int
let aYard = LengthUnit(value: 1, type: .Yard)

// Double
let halfFluidOunce = VolumeUnit(value: 0.5, type: .FluidOunce)
```

I discovered some weirdness when using the NSDecimalNumber(double:) initializer. The following code evaluates to false:

```
NSDecimalNumber.double(1.001) == NSDecimalNumber(decimal: NSNumber(double: 1.001).decimalValue)
```
I created an internal extension on NSDecimalNumber to get around that issue to when you use the Int or Double initializer on a unit struct, it first becomes an NSNumber and the uses the decimalValue property of that as the initializer parameter for NSDecimalNumber. 

So if you're getting some weirdness using the NSDecimalNumber version of the initializers this could be the reason.

#####Rounding and other behavior

It's possible to specify decimal number behavior in two ways:

1. Default for the kind of unit by using the static sharedDecimalNumberHandler property:

```
AreaUnit.sharedDecimalNumberHandler = NSDecimalNumberHandler(roundingMode: .RoundPlain, scale: 2, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: false)

```

2. On each the instance using the decimalNumberHandler property:

```
let massUnit = MassUnit(value: 1, type. .Gram)
massUnit.decimalNumberHandler = NSDecimalNumberHandler(roundingMode: .RoundPlain, scale: 2, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: false)
```

A decimal number handler on the instance takes precendence over one assigned to the static property

Note that since there is a conversion going on in the initializer, assigning a NSDecimalNumberHandler to the static property will affect the baseUnitTypeValue saved on the instance. It kind of smells so I may change that in the future.


#####Arithmetic

To make it easier to work with these units I defined operator overloading for the standard arithmetic functions. They differ a bit though since in my mind it does make sense to add/subtract two units, but it doesn't make sense to multiply/divide units.

Operators and types:

```
+: left: Int/Double/Unit, right: Int/Double/Unit
-: left: Int/Double/Unit, right: Int/Double/Unit
*: left: Int/Double, right: Unit
*: left: Unit, right Int/Double
/: left: Int/Double, right: Unit
/: left: Unit, right Int/Double
```

You get the same decimal number behavior as described above when using the arithmetic operators, with the extra rule that if you're adding or subtracting two units the precedence for finding the NSDecimalNumberHandler to use goes like this:

```
let handler = left.decimalNumberHandler ?? right.decimalNumberHandler ?? U.sharedDecimalNumberHandler
```

#####Int and Double extenstions

I decided to make it easy to go from an Int or a Double to a Unit by making extensions with convenience functions. 

The below line gives you a LengthUnit representing 2 km:

```
let twoKilometres = 2.kilometres()
```

This means that you can get easy conversion from an Int or a Double with a oneliner like this:

```
let lengthOfAmericanFootballFieldInMetres = 100.yards().metreValue
```

###Example App

I've included a very basic example application in the Example folder. It's mostly just a viewcontroller for choosing units and types and playing around with conversion

###Correctness

I used Wikipedia as the source for all the conversions and names. That's as good as it gets at this point. Hopefully that's good enough. I should also note that I'm a metric guy myself so I'm more confident that the metric names and values are more correct than the imperial versions. 

###Ideas for new features

- Extensions for NSDecimalNumber
- ?

###License

[MIT](https://github.com/bogosmer/UnitKit/blob/master/LICENSE) 