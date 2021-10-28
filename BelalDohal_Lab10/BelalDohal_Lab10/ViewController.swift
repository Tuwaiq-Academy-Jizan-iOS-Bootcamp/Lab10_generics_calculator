import UIKit

class ViewController: UIViewController {
    var firstNumber = ""
    var secondNumber = ""
    var operations = ""
    var haveResult = true
    @IBOutlet weak var lable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func numbers(_ sender: UIButton) {
        if haveResult {
            lable.text = ""
        }
        lable.text! += "\(sender.tag)"
        haveResult = false
    }
                            // Operations //
    @IBAction func operationsAction(_ sender: UIButton) {
        switch sender.tag {
        case 10: firstNumber = "\(lable.text!)"
            operations = "/"
            haveResult = true
        case 20: firstNumber = "\(lable.text!)"
            operations = "x"
            haveResult = true
        case 30: firstNumber = "\(lable.text!)"
            operations = "-"
            haveResult = true
        case 40: firstNumber = "\(lable.text!)"
            operations = "+"
            haveResult = true
        case 50: lable.text! += "."
            haveResult = false
        default: lable.text = "0"
        }
    }
                            // Result //
    @IBAction func result(_ sender: Any) {
        firstNumber = "\(calculations())"
        let noZero = firstNumber.components(separatedBy: ".")
        if noZero[1] == "0" {
            lable.text! = noZero[0]
        }else {
            lable.text = "\(calculations())"
        }
    }
                            // Clear //
    @IBAction func clear(_ sender: Any) {
        firstNumber = ""
        secondNumber = ""
        operations = ""
        haveResult = false
        lable.text = ""
    }
                          // Functions //
    func calculations() -> Double {
        switch operations {
        case "/": secondNumber = lable.text!
            return Double(firstNumber)! / Double(secondNumber)!
        case "x": secondNumber = lable.text!
            return Double(firstNumber)! * Double(secondNumber)!
        case "-": secondNumber = lable.text!
            return Double(firstNumber)! - Double(secondNumber)!
        case "+": secondNumber = lable.text!
            return Double(firstNumber)! + Double(secondNumber)!
        default: operations = ""
        }
        return 0
    }
}
