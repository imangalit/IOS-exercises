//
//  ViewController.swift
//  Calculator
//
//  Created by Имангали on 2/25/22.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var firstNumberField: UITextField!
    
    @IBOutlet weak var operationField: UITextField!
    
    @IBOutlet weak var secondNumberField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func calculateButton(_ sender: UIButton) {
        var result = 2
        let firstNumber = Int(firstNumberField.text!) ?? 0
        let secondNumber = Int(secondNumberField.text!) ?? 0
        switch operationField.text {
        case "+":
            result = firstNumber + secondNumber
        case "-":
            result = firstNumber - secondNumber
        case "*":
            result = firstNumber * secondNumber
        case "/":
            result = firstNumber / secondNumber
        case "%":
            result = firstNumber % secondNumber
            
        default:
            result = -1
        }
        resultLabel.text = "Result is \(result)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

