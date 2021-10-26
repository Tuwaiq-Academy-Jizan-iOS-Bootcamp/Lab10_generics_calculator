import UIKit
class ViewController: UIViewController {
    var firstNumber = 0.0
    var secondNumber = 0.0
    var operation = ""
    var haveResult = true
    @IBOutlet weak var lable: UILabel!
    @IBAction func numbersButton(_ sender: UIButton) {
        if haveResult {
            lable.text = ""
        }
        lable.text! = lable.text! + String(sender.tag)
        haveResult = false
    }
    @IBAction func oberationAction(_ sender: UIButton) {
        switch sender.tag {
        case 10: operation = "/"
            firstNumber = Double(lable.text!)!
            haveResult = true
        case 20: operation = "*"
            firstNumber = Double(lable.text!)!
            haveResult = true
        case 30: operation = "-"
            firstNumber = Double(lable.text!)!
            haveResult = true
        case 40: operation = "+"
            firstNumber = Double(lable.text!)!
            haveResult = true
        case 60: lable.text = lable.text! + "."
            haveResult = false
        default: lable.text = "Error"
        }
    }
    @IBAction func result(_ sender: UIButton) {
        secondNumber = Double(lable.text!)!
        if operation == "/" {
            lable.text = "\(divide(number1: firstNumber, number2: secondNumber))"
        }
        if operation == "x" {
            lable.text = "\(plus(number1: firstNumber, number2: secondNumber))"
        }
        if operation == "-" {
            lable.text = "\(minus(number1: firstNumber, number2: secondNumber))"
        }
        if operation == "*" {
            lable.text = "\(multybly(number1: firstNumber, number2: secondNumber))"
        }
    }
    @IBAction func clearButton(_ sender: UIButton) {
        firstNumber = 0
        secondNumber = 0
        operation = ""
        haveResult = true
        lable.text = "0"
    }
    func divide<T:BinaryFloatingPoint>(number1:T,number2:T) -> T {
        return number1 / number2
    }
    func plus<T:Numeric>(number1:T,number2:T) -> T {
        return number1 + number2
    }
    func minus<T:Numeric>(number1:T,number2:T) -> T {
        return number1 - number2
    }
    func multybly<T:Numeric>(number1:T,number2:T) -> T {
        return number1 * number2
    }
    

    
    
    
    
    
}
