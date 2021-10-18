import UIKit
enum Operation:String
{
case Add = "+"
case subtract = "-"
case divide = "/"
case multy = "*"
case NULL = "null"
}
class ViewController: UIViewController
{
   var numberOnScreen: Double = 0
   var previsNumber: Double = 0
   var oprator = 0
   var perfMath = false
    
    @IBOutlet weak var label1: UILabel!
    
      var runNum = ""
      var lValue = ""
      var rValue = ""
      var result = ""
      var currentOptation:Operation = .NULL
 
    @IBAction func numbers(_ sender: UIButton)
    {
        if runNum.count <= 9
        {
        runNum += "\(sender.tag)"
        label1.text = runNum
        }
    }
     @IBAction func multy(_ sender: Any)
    {
        opration(operation: .multy)
     }
    @IBAction func add(_ sender: Any)
    {
        opration(operation: .Add)
    }
    @IBAction func subtract(_ sender: Any)
    {
        opration(operation: .subtract)
    }
    @IBAction func divide(_ sender: Any)
    {
        opration(operation: .divide)
    }
    @IBAction func equal(_ sender: Any)
    {
        opration(operation: currentOptation)
    }
    @IBAction func clear(_ sender: Any)
    {
     self.view.endEditing(true)
        label1.text = "0"
        runNum = ""
        lValue = ""
        rValue = ""
        result = ""
        currentOptation = .NULL
        label1.text = "0"
    }
    @IBAction func dot(_ sender: Any)
    {
        if runNum.count <= 7
        {
        runNum += "."
        label1.text = runNum
        }
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        label1.text = "0"
    }
    func opration(operation: Operation)
    {
        if currentOptation != .NULL
        {
            if runNum != ""
            {
                rValue = runNum
                if currentOptation == .Add
                {
                    result = "\(Double(lValue)! + (Double(rValue)!))"
                }
                else if currentOptation == .subtract
                {
                    result = "\(Double(lValue)! - (Double(rValue)!))"
                }
                else if currentOptation == .multy
                {
                    result = "\(Double(lValue)! * (Double(rValue)!))"
                }
                else if currentOptation == .divide
                {
                    result = "\(Double(lValue)! / (Double(rValue)!))"
                }
                lValue = result
                if (Double(result)!.truncatingRemainder(dividingBy: 1) == 0)
                {
                    result = "\(Int(Double(result)!))"
                }
                label1.text = result
                }
            currentOptation = operation
                }
                else
                {
                lValue = runNum
                runNum = ""
                currentOptation = operation
        }
    }
}
