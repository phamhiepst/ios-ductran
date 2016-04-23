//
//  ViewController.swift
//  inspirus
//
//  Created by Hiep Pham on 4/23/16.
//  Copyright © 2016 phamhiepst. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var inspireMeButton: UIButton!
    
    var quotes = Quotes()
    
    @IBAction func inspireMeDidTap(sender: UIButton) {
        // change the text
        let quote = quotes.randomQuote()
        quoteLabel.text = quote
        
        // change color of the text
        quoteLabel.backgroundColor = randomLableColor()
        
        // change the background image
        let image = randomImage()
        backgroundImageView.image = image
        
        // change button color
        inspireMeButton.backgroundColor = randomButtonColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // change the text randomly
        let quote = quotes.randomQuote()
        quoteLabel.text = quote

    }
    
    func randomImage() -> UIImage{
        let imageCount = 6
        let randomNumber = random() % (imageCount + 1)
        
        if let image = UIImage(named: "image\(randomNumber)"){
            return image
        }
        else{
            return UIImage(named: "image1")!
        }
    }
    
    func randomButtonColor() -> UIColor{
        let randomNumber = random() % 5
        
        switch randomNumber {
        case 0:
            return UIColor(red: 1, green: 0.8, blue: 0, alpha: 0.9) /* #ffcc00 */
        case 1:
            return UIColor(red: 0.8314, green: 0.4039, blue: 0.9176, alpha: 0.9) /* #d467ea */
        case 2:
            return UIColor(red: 0.3412, green: 0.7765, blue: 0.7059, alpha: 0.9) /* #57c6b4 */
        case 3:
            return UIColor(red: 0.3686, green: 0.7569, blue: 0.3333, alpha: 0.9) /* #5ec155 */
        default:
            return UIColor(red: 0.9765, green: 0.2745, blue: 0.1647, alpha: 0.9) /* #f9462a */
        }
    }
    
    func randomLableColor() -> UIColor{
        let randomNumber = random() % 5
        
        switch randomNumber {
        case 0:
            return UIColor(red: 1, green: 0.8, blue: 0, alpha: 0.5) /* #ffcc00 */
        case 1:
            return UIColor(red: 0.8314, green: 0.4039, blue: 0.9176, alpha: 0.5) /* #d467ea */
        case 2:
            return UIColor(red: 0.3412, green: 0.7765, blue: 0.7059, alpha: 0.5) /* #57c6b4 */
        case 3:
            return UIColor(red: 0.3686, green: 0.7569, blue: 0.3333, alpha: 0.5) /* #5ec155 */
        default:
            return UIColor(red: 0.9765, green: 0.2745, blue: 0.1647, alpha: 0.5) /* #f9462a */
        }
    }
}

