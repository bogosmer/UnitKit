//
//  ViewController.swift
//  UnitKit Example
//
//  Created by Bo Gosmer on 15/02/2016.
//  Copyright © 2016 Deadlock Baby. All rights reserved.
//

import UIKit
import UnitKit

class ViewController: UIViewController {

    // MARK: - Properties
    
    @IBOutlet weak var unitButton: UIButton!

    @IBOutlet weak var sourceUnitTypeButton: UIButton!
    
    @IBOutlet weak var valueTextField: UITextField!
    
    @IBOutlet weak var sourceDescription: UILabel!
    
    @IBOutlet weak var destinationUnitTypeButton: UIButton!
    
    @IBOutlet weak var destinationDescription: UILabel!
    
    // MARK: - Lifecycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        valueTextField.keyboardType = .NumbersAndPunctuation
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        refreshButtons()
        refreshDescriptions()
        refreshTextField()
    }

    // MARK: - IBActions

    @IBAction func unitButtonPressed(sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewControllerWithIdentifier("DetailViewController") as? DetailViewController {
            vc.options = [UnitKind.Area.rawValue, UnitKind.Length.rawValue, UnitKind.Mass.rawValue, UnitKind.Volume.rawValue]
            vc.completion = Selections.setUnitKind
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func sourceUnitTypeButtonPressed(sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewControllerWithIdentifier("DetailViewController") as? DetailViewController, unitKind = Selections.instance.unitKind {
            vc.options = unitTypesForUnitKind(unitKind)
            vc.completion = Selections.setSourceUnitType
            navigationController?.pushViewController(vc, animated: true)
        }
    }

    @IBAction func destinationUnitTypeButtonPressed(sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewControllerWithIdentifier("DetailViewController") as? DetailViewController, unitKind = Selections.instance.unitKind {
            vc.options = unitTypesForUnitKind(unitKind)
            vc.completion = Selections.setDestinationUnitType
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func textFieldValueChanged(sender: AnyObject) {
        Selections.setUnit(nil)
        if let input = valueTextField.text {
            let decimalNumber = NSDecimalNumber(string: input)
            if decimalNumber != NSDecimalNumber.notANumber() {
                Selections.setUnit(decimalNumber)
            }
        }
        refreshDescriptions()
    }
    
    // MARK: - Private functions
 
    private func refreshButtons() {
        
        if let unwrappedUnitKind = Selections.instance.unitKind {
            unitButton.setTitle(unwrappedUnitKind.rawValue, forState: .Normal)
            sourceUnitTypeButton.enabled = true
        } else {
            unitButton.setTitle("Choose Unit", forState: .Normal)
            sourceUnitTypeButton.enabled = false
        }
        
        if let unwrappedSourceUnitType = Selections.instance.sourceUnitType {
            sourceUnitTypeButton.setTitle(unwrappedSourceUnitType.description, forState: .Normal)
            destinationUnitTypeButton.enabled = true
        } else {
            sourceUnitTypeButton.setTitle("Choose Unit Type", forState: .Normal)
            destinationUnitTypeButton.enabled = false
        }
        
        if let unwrappedDestinationUnitType = Selections.instance.destinationUnitType {
            destinationUnitTypeButton.setTitle(unwrappedDestinationUnitType.description, forState: .Normal)
        } else {
            destinationUnitTypeButton.setTitle("Choose Destination Unit Type", forState: .Normal)
        }
    }
    
    private func refreshDescriptions() {
        sourceDescription.text = "Description"
        destinationDescription.text = "Description"
        
        if let area = Selections.instance.areaUnit {
            sourceDescription.text = area.description
            if let destinationUnitType = Selections.instance.destinationUnitType as? AreaUnitType {
                destinationDescription.text = AreaUnit(value: area.valueForUnitType(destinationUnitType), type: destinationUnitType).description
            }
        }
        
        if let length = Selections.instance.lengthUnit {
            sourceDescription.text = length.description
            if let destinationUnitType = Selections.instance.destinationUnitType as? LengthUnitType {
                destinationDescription.text = LengthUnit(value: length.valueForUnitType(destinationUnitType), type: destinationUnitType).description
            }
        }
        
        if let mass = Selections.instance.massUnit {
            sourceDescription.text = mass.description
            if let destinationUnitType = Selections.instance.destinationUnitType as? MassUnitType {
                destinationDescription.text = MassUnit(value: mass.valueForUnitType(destinationUnitType), type: destinationUnitType).description
            }
        }
        
        if let volume = Selections.instance.volumeUnit {
            sourceDescription.text = volume.description
            if let destinationUnitType = Selections.instance.destinationUnitType as? VolumeUnitType {
                destinationDescription.text = VolumeUnit(value: volume.valueForUnitType(destinationUnitType), type: destinationUnitType).description
            }
        }
    }
    
    private func refreshTextField() {
        valueTextField.text = ""
        
        if let area = Selections.instance.areaUnit {
            valueTextField.text = area.valueForUnitType(area.unitType).description
        }
        
        if let length = Selections.instance.lengthUnit {
            valueTextField.text = length.valueForUnitType(length.unitType).description
        }
        
        if let mass = Selections.instance.massUnit {
            valueTextField.text = mass.valueForUnitType(mass.unitType).description
        }
        
        if let volume = Selections.instance.volumeUnit {
            valueTextField.text = volume.valueForUnitType(volume.unitType).description
        }
    }
    
    private func unitTypesForUnitKind(unitKind: UnitKind) -> [String] {
        switch unitKind {
        case .Area:
            return [AreaUnitType.Acre.rawValue, AreaUnitType.Hectare.rawValue, AreaUnitType.SquareCentimetre.rawValue, AreaUnitType.SquareFoot.rawValue, AreaUnitType.SquareInch.rawValue, AreaUnitType.SquareKilometre.rawValue, AreaUnitType.SquareMetre.rawValue, AreaUnitType.SquareMile.rawValue, AreaUnitType.SquareMillimetre.rawValue, AreaUnitType.SquareNauticalMile.rawValue, AreaUnitType.SquareYard.rawValue]
        case .Length:
            return [LengthUnitType.Centimetre.rawValue, LengthUnitType.Foot.rawValue, LengthUnitType.Inch.rawValue, LengthUnitType.Kilometre.rawValue, LengthUnitType.Metre.rawValue, LengthUnitType.Mile.rawValue, LengthUnitType.Millimetre.rawValue, LengthUnitType.NauticalMile.rawValue, LengthUnitType.Yard.rawValue]
        case .Mass:
            return [MassUnitType.Dram.rawValue, MassUnitType.Grain.rawValue, MassUnitType.Gram.rawValue, MassUnitType.Kilo.rawValue, MassUnitType.LongHundredweight.rawValue, MassUnitType.LongTon.rawValue, MassUnitType.Milligram.rawValue, MassUnitType.Ounce.rawValue, MassUnitType.Pound.rawValue, MassUnitType.Quarter.rawValue, MassUnitType.ShortHundredweight.rawValue, MassUnitType.ShortTon.rawValue, MassUnitType.Stone.rawValue, MassUnitType.Tonne.rawValue]
        case .Volume:
            return [VolumeUnitType.Bushel.rawValue, VolumeUnitType.CubicFoot.rawValue, VolumeUnitType.CubicInch.rawValue, VolumeUnitType.CubicMetre.rawValue, VolumeUnitType.FluidOunce.rawValue, VolumeUnitType.Gallon.rawValue, VolumeUnitType.Gill.rawValue, VolumeUnitType.Litre.rawValue, VolumeUnitType.Millilitre.rawValue, VolumeUnitType.Pint.rawValue, VolumeUnitType.Quart.rawValue, VolumeUnitType.USBushel.rawValue, VolumeUnitType.USDryGallon.rawValue, VolumeUnitType.USDryPint.rawValue, VolumeUnitType.USDryQuart.rawValue, VolumeUnitType.USFluidOunce.rawValue, VolumeUnitType.USLiquidGallon.rawValue, VolumeUnitType.USLiquidGill.rawValue, VolumeUnitType.USLiquidPint.rawValue, VolumeUnitType.USLiquidQuart.rawValue]
        }
    }
}

