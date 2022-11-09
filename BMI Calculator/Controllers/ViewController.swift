//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSliderLabel: UILabel!
    @IBOutlet weak var weightSliderLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

 
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightSliderLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightSliderLabel.text = "\(String(format: "%.0f", sender.value))Kg"
    }
    @IBAction func calculateBtn(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
       
        calculatorBrain.calculateBMI(height: height, weight: weight)
        performSegue(withIdentifier: "goToSecond", sender: self)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecond" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.bmiValue = calculatorBrain.getBMIvalue()
            destinationVC.bmiAdvice = calculatorBrain.getAdvice()
            destinationVC.bmiColor = calculatorBrain.getColor()
        }
    }
}

