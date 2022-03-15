import UIKit

struct BMICalculator {
    
    var bmi: BMI?
    
    mutating func calculateBMI (height: Float, weight: Float) {
        
        let bmiValue = weight / (height * height)
        let bmiAdvice: String
        let bmiColor: UIColor
        
        switch bmiValue {
        case 12...18.5:
            bmiAdvice = "Underweight"
            bmiColor = UIColor.blue
        case 18.5...24.9:
            bmiAdvice = "Normal Weight"
            bmiColor = UIColor.green
        case 24.9...29.9:
            bmiAdvice = "Overweight"
            bmiColor = UIColor.init(red: 1, green: 0.8, blue: 0.0, alpha: 1.0)
        case 29.9...39 :
            bmiAdvice = "Obese"
            bmiColor = UIColor.orange
        default:
            bmiAdvice = "not to my knowledge..."
            bmiColor = UIColor.gray
        }
        
        let bmi = BMI(value: bmiValue, advice: bmiAdvice, color: bmiColor)
        self.bmi = bmi
    }
}
