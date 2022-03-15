import UIKit

class CalculateBMIVC: UIViewController {
    
    var calculator = BMICalculator()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    @IBAction func heightSliderMoves(_ sender: UISlider) {
        let sliderValue = String(format: "%.2f", sender.value)
        heightLabel.text = sliderValue + " m"
    }
    
    @IBAction func weightSliderMoves(_ sender: UISlider) {
        let sliderValue = String(format: "%0.0f", sender.value)
        weightLabel.text = sliderValue + " kg"
    }
    
    
    
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        calculator.calculateBMI(height: height, weight: weight)
        
        performSegue(withIdentifier: "goToResultBMIVC", sender: self)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResultBMIVC" {
            guard let destination = segue.destination as? BMIResultVC else {return}
            
            destination.bmiValue = calculator.bmi?.value
            destination.bmiAdvice = calculator.bmi?.advice
            destination.bmiColor = calculator.bmi?.color
        }
    }
    
}

