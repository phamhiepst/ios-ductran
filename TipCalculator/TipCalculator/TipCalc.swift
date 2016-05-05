//
//  TipCalc.swift
//  TipCalculator
//
//  Created by Hiep Pham on 5/4/16.
//  Copyright © 2016 phamhiepst. All rights reserved.
//

import Foundation

class TipCalc{

    var amountBeforeTax: Float = 0
    var tipPercentage: Float = 0
    var tipAmount: Float = 0
    var totalAmount:Float = 0
    
    var numberOfPeople: Int = 0
    var totalAmountPerPeople:Float = 0
    
    init (amountBeforeTax: Float, tipPercentage: Float){
    
        self.amountBeforeTax = amountBeforeTax
        self.tipPercentage =  tipPercentage
    }
    
    func calculateTip(){
        
        tipAmount = amountBeforeTax * Float(Int(tipPercentage*100))/100
        totalAmount = amountBeforeTax + tipAmount
        
        totalAmountPerPeople = (totalAmount / Float(numberOfPeople))
    }
}