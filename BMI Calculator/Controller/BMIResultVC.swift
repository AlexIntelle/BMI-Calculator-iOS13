
import UIKit

class BMIResultVC: UIViewController {
    
    var bmiValue: Float?
    var bmiAdvice: String?
    var bmiColor: UIColor?
    
    @IBOutlet weak var BMIResultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let bmiValue = bmiValue {
            BMIResultLabel.text = String(format: "%.2f", bmiValue)
        }
        adviceLabel.text = bmiAdvice
        view.backgroundColor = bmiColor
    }
    
    @IBAction func recalcTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
