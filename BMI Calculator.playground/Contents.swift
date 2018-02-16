//: Playground - noun: a place where people can play

import UIKit

func calcBMI(weight : Double, height : Double) -> String {
    
    let bmi = weight / pow(height, 2)
    
    let shortenedBMI = String(format: "%.2f", bmi)
    
    var interpretation = ""
    
    if bmi > 25 {
        interpretation = "You are overweight, go now to the gym."
    } else if bmi > 18.5 && bmi <= 25 {
        interpretation = "You are in your normal weight."
    } else {
        interpretation = "You are underweight."
    }
    
    return "Your BMI is \(shortenedBMI). \(interpretation)"
    
}

var bmiResult = calcBMI(weight: 75.5, height: 1.76)
print(bmiResult)


