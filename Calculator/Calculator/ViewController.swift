import UIKit
class ViewController: UIViewController {
//VARIABLES
    var firstNumber = ""
    var secondNumber = ""
    var operation = ""
    var haveResult = false
    var resultNumber = ""
    var numAfterResult = ""
    @IBOutlet weak var numberOnScreen: UILabel!
//ACTIONS
    override func viewDidLoad() {
        super.viewDidLoad()
    }
//NUMBERS ACTION
    @IBAction func numberPressed(_ sender: UIButton) {
        if (operation == "") {
            firstNumber += "\(sender.tag)"
            numberOnScreen.text = firstNumber
        }else if (operation != "" && !haveResult) {
            secondNumber += "\(sender.tag)"
            numberOnScreen.text = secondNumber
        }else if (operation != "" && haveResult) {
            numAfterResult = "\(sender.tag)"
            numberOnScreen.text = numAfterResult
        }
    }
//CLEAR Action
    @IBAction func clear(_ sender: Any) {
        firstNumber = ""
        secondNumber = ""
        operation = ""
        haveResult = false
        resultNumber = ""
        numAfterResult = ""
        numberOnScreen.text = "0"
    }
//ADD Action
    @IBAction func add(_ sender: Any) {
        operation = "+"
    }
//MINUS Action
    @IBAction func subtract(_ sender: Any) {
        operation = "-"
    }
//MULTIPLY Action
    @IBAction func multiply(_ sender: Any) {
        operation = "x"
    }
//EVEN Action
    @IBAction func even(_ sender: Any) {
        operation = "/"
    }
//EQUAL Action
    @IBAction func equal(_ sender: Any) {
        if (operation != "" && !haveResult) {
            resultNumber = "\(theCalculations())"
            numberOnScreen.text = resultNumber
        }
        
    }
//DOT ACTION
    @IBAction func dot(_ sender: Any) {
        if (operation == "") {
            firstNumber += "."
            numberOnScreen.text = firstNumber
        }else if (operation != "" && !haveResult) {
            secondNumber += "."
            numberOnScreen.text = secondNumber
        }
//Function Of Calculation
    }
func theCalculations() -> Double {
    if (operation == "+") {
        if (!haveResult) {
        haveResult = true
    return Double(firstNumber)! + Double(secondNumber)!
           }else {
            return Double(resultNumber)! + Double(numAfterResult)!
           }
    }else if (operation == "-") {
        if (!haveResult) {
        haveResult = true
    return Double(firstNumber)! - Double(secondNumber)!
           }else {
            return Double(resultNumber)! - Double(numAfterResult)!
           }
    }else if (operation == "x") {
        if (!haveResult) {
        haveResult = true
    return Double(firstNumber)! * Double(secondNumber)!
           }else {
            return Double(resultNumber)! * Double(numAfterResult)!
           }
    }else if (operation == "/"){
        if (!haveResult) {
        haveResult = true
    return Double(firstNumber)! / Double(secondNumber)!
           }else {
            return Double(resultNumber)! / Double(numAfterResult)!
           }
    }
    return 0
   }

}
