//
//  TipCalculatorViewController.swift
//  TipCalculator
//
//  Created by Hiep Pham on 5/4/16.
//  Copyright © 2016 phamhiepst. All rights reserved.
//

import UIKit

class TipCalculatorViewController: UIViewController, UITextFieldDelegate {

    
    // MARK: - IBOutlets
    
    @IBOutlet weak var amountBeforeTaxTextFeild: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipPercentageSlider: UISlider!
    @IBOutlet weak var resultLable: UILabel!
    
    @IBOutlet weak var numberOfPeopleLabel: UILabel!
    @IBOutlet weak var numberOfPeopleSilder: UISlider!
    @IBOutlet weak var totalAmountPerPeopleLabel: UILabel!
    
    // MARK: - Properties
    var tipCalc = TipCalc(amountBeforeTax: 100, tipPercentage: 0.05)
    
    // MARK: - ViewController Life-cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // default values
        tipPercentageLabel.text = String(format: "Tip: %d%%", Int(tipCalc.tipPercentage * 100))
        resultLable.text = String(format: "Total: $%0.2f Tip: $%0.2f", tipCalc.totalAmount, tipCalc.tipAmount)
        numberOfPeopleLabel.text = String(format: "Split: %02d", Int(numberOfPeopleSilder.value))
    }
    
    func calcTip(){
        tipCalc.tipPercentage = Float(tipPercentageSlider.value)
        tipCalc.amountBeforeTax = (amountBeforeTaxTextFeild.text! as NSString).floatValue
        
        tipCalc.numberOfPeople = Int(numberOfPeopleSilder.value)
        
        tipCalc.calculateTip()
        updateUI()
    }
    
    func updateUI(){
        
        // update label
        resultLable.text = String(format: "Total: $%0.2f Tip: $%0.2f", tipCalc.totalAmount, tipCalc.tipAmount)
        totalAmountPerPeopleLabel.text = String(format: "$%0.2f", tipCalc.totalAmountPerPeople)
    }
    
    // MARK: - UIControl Events
    @IBAction func amountOfBeforeTaxTextFeildChanged(sender: AnyObject) {
        
        calcTip()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField == amountBeforeTaxTextFeild{
            textField.resignFirstResponder()
            calcTip()
            
            // format currency in text field
            // let amoutBeforeTaxFloat = (amountBeforeTaxTextFeild.text! as NSString).floatValue
            // amountBeforeTaxTextFeild.text = currencyStringFromNumber(amoutBeforeTaxFloat)
        }
        return true
    }
    @IBAction func tipPercentageSliderValueChanged(sender: UISlider) {
        
        tipPercentageLabel.text = String(format: "Tip: %d%%", Int(tipCalc.tipPercentage * 100))
        calcTip()
    }
    
    @IBAction func numberOfPeopleValueChanged(sender: AnyObject) {
        
        numberOfPeopleLabel.text = String(format: "Split: %02d", Int(numberOfPeopleSilder.value))
        calcTip()
    }
    
    func currencyStringFromNumber(number: Float) -> String {
        
        let formatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        formatter.currencyCode = NSLocale.currentLocale().displayNameForKey(NSLocaleCurrencySymbol, value: NSLocaleCurrencyCode)

        return formatter.stringFromNumber(number)!
    }
}
