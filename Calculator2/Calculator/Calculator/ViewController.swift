//
//  ViewController.swift
//  Calculator
//
//  Created by Имангали on 3/16/22.
//

import UIKit

class ViewController: UIViewController {

    var firstNum: Double = 0
    var secondNum: Double = 0
    var proverka: Bool = false
    var operation: Int = 0
    
    @IBOutlet weak var result: UILabel!
    
    
    @IBAction func digits(_ sender: UIButton) {
        let tagButton = sender.tag
        if (proverka) {
            result.text = String(tagButton)
            proverka = false
        } else {
            if(result.text == "0") {result.text = ""}
            result.text = result.text! + String(tagButton)
        }
        secondNum = Double(result.text!)!
    }
    
    @IBAction func buttons(_ sender: Any) {
        
        let tagButton = (sender as! UIButton).tag
        if (tagButton != 10 && tagButton != 17) {
            firstNum = Double(result.text!)!
        }
        if (tagButton == 10) {
            result.text = "0"
        }
        if (tagButton >= 13 && tagButton <= 16) {
            operation = tagButton
            proverka = true
        }
        if (tagButton == 17) {
            if (operation == 12) {}
            if (operation == 13) { result.text = String(firstNum / secondNum) }
            if (operation == 14) { result.text = String(firstNum * secondNum) }
            if (operation == 15) { result.text = String(firstNum - secondNum) }
            if (operation == 16) { result.text = String(firstNum + secondNum) }
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

