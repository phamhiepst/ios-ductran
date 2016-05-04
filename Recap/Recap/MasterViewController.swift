//
//  MasterViewController.swift
//  Recap
//
//  Created by Hiep Pham on 5/3/16.
//  Copyright © 2016 phamhiepst. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
  
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowDetailView"{
            if let detailViewControler = segue.destinationViewController as? ViewController{
            
                detailViewControler.defaultText = "Move me"
            }
        }
    }
}
