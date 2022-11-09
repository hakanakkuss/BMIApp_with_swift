//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Macbook Pro on 8.11.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?

    func getBMIvalue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        print(bmi?.value)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height:Float,weight:Float){
        let bmiValue = weight / (height * height)
        bmi = BMI(value: bmiValue, advice: "Biraz ye", color: .blue)
        if bmiValue < 18.5 {
            
        }
        else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "Tamam", color: .green)
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Artık yeme", color: .red)
        }
       
    }
    func getAdvice() -> String{
        
        return bmi?.advice ?? "NO COLOR"
    }
    func getColor() -> UIColor {
        
        return bmi?.color ?? UIColor.white
    }
    
  
}
