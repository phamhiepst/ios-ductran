//
//  TipCalculatorViewController.swift
//  TipCalculator
//
//  Created by Hiep Pham on 5/4/16.
//  Copyright © 2016 phamhiepst. All rights reserved.
//

import UIKit

class TipCalculatorViewController: UIViewController {

    
    // MARK: - IBOutlet
    
    @IBOutlet weak var amountBeforeTaxTextFeild: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipPercentageSlider: UISlider!
    @IBOutlet weak var resultLable: UILabel!
    
    @IBOutlet weak var numberOfPeopleLabel: UILabel!
    @IBOutlet weak var numberOfPeopleSilder: UISlider!
    
    // MARK: - Properties

    
    // MARK: - ViewController Life-cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
