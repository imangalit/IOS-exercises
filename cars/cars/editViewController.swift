//
//  editViewController.swift
//  cars
//
//  Created by Имангали on 5/27/22.
//

import UIKit

class editViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var volumeTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    
    
    @IBAction func saveButton(_ sender: UIButton) {
        if ((titleTextField.text) != nil && (!titleTextField.text!.isEmpty)) {
            cars[index!].title = titleTextField.text!
        }
        if ((descTextField.text) != nil && (!descTextField.text!.isEmpty)) {
            cars[index!].descp = descTextField.text!
        }
        if ((yearTextField.text) != nil && (!yearTextField.text!.isEmpty)) {
            cars[index!].year = yearTextField.text!
        }
        if ((volumeTextField.text) != nil && (!volumeTextField.text!.isEmpty)) {
            cars[index!].volume = volumeTextField.text!
        }
        if ((priceTextField.text) != nil && (!priceTextField.text!.isEmpty)) {
            cars[index!].price = priceTextField.text!
        }
    }
    var index : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = cars[index!].img
        titleTextField.text = cars[index!].title
        descTextField.text = cars[index!].descp
        descTextField.borderStyle = .roundedRect
        yearTextField.text = cars[index!].year
        volumeTextField.text = cars[index!].volume
        priceTextField.text = cars[index!].price
        
        // Do any additional setup after loading the view.
    }
    
}
