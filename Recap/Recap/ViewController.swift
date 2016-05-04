//
//  ViewController.swift
//  Recap
//
//  Created by Hiep Pham on 5/3/16.
//  Copyright © 2016 phamhiepst. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var defaultText: String!

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        myTextField.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTextField.text = defaultText
    }

}

extension ViewController: UITextFieldDelegate{
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        myLabel.text = myTextField.text
        
        return true
    }
}

