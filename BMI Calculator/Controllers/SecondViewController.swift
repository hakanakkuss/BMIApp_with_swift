//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Macbook Pro on 7.11.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue : String?
    var bmiAdvice : String?
    var bmiColor : UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = bmiAdvice
        view.backgroundColor = bmiColor
    }
    @IBAction func recalculateBtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
