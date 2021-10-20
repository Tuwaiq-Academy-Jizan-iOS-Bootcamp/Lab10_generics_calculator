import UIKit
class ViewController: UIViewController {
        //=============\\
          //VARIABLES\\
    var firstNumber = 0
    var secondNumber = 0
    var operation = ""
    var reseLable = true
    @IBOutlet weak var numberOnScreen: UILabel!
           //\//|\\/\\
         //===========\\
           //NUMBERS\\
    @IBAction func buttonAction(_ sender: UIButton) {
        if (reseLable) {
            numberOnScreen.text = ""
        }
        numberOnScreen.text = numberOnScreen.text! + "\(sender.tag)"
        reseLable = false
    }
               //\//|\\/\\
            //=============\\
          //OPERATORS and DOT\\
    @IBAction func operatorsActions(_ sender: UIButton) {
        switch sender.tag {
        case 10: firstNumber = Int(numberOnScreen.text!)!
            operation = "/"
            reseLable = true
        case 20: firstNumber = Int(numberOnScreen.text!)!
            operation = "x"
            reseLable = true
        case 30: firstNumber = Int(numberOnScreen.text!)!
            operation = "-"
            reseLable = true
        case 40: firstNumber = Int(numberOnScreen.text!)!
            operation = "+"
            reseLable = true
        case 60: numberOnScreen.text = numberOnScreen.text! + "."
            reseLable = false
        default: numberOnScreen.text = "ERROR!"
        }
    }
    
              //\/\\//||\\////\\
            //==================\\
               //Equal Action\\
    @IBAction func equalAction(_ sender: Any) {
        secondNumber = (Int(numberOnScreen.text!)!)
        if operation == "/" {
            numberOnScreen.text = "\(devideBy(number1: firstNumber, number2: secondNumber))"
        }
        if operation == "x" {
            numberOnScreen.text = "\(multiplyBy(number1: firstNumber, number2: secondNumber))"
        }
        if operation == "-" {
            numberOnScreen.text = "\(supstractBy(number1: firstNumber, number2: secondNumber))"
        }
        if operation == "+" {
            numberOnScreen.text = "\(addBy(number1: firstNumber, number2: secondNumber))"
        }
    }
    @IBAction func clearCommand(_ sender: Any) {
        firstNumber = 0
        secondNumber = 0
        reseLable = true
        numberOnScreen.text = "0"
    }
            //\\//|\\//\\
          //=============\\
            //FUNCTIONS\\
    func devideBy(number1: Int, number2: Int) -> Int {
        return number1 / number2
    }
    func multiplyBy(number1: Int, number2: Int) -> Int {
        return number1 * number2
    }
    func supstractBy(number1: Int, number2: Int) -> Int {
        return number1 - number2
    }
    func addBy(number1: Int, number2: Int) -> Int {
        return number1 + number2
    }
}//The END\\
