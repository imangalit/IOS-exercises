//
//  ImangaliViewController.swift
//  login
//
//  Created by Имангали on 4/18/22.
//

import UIKit

class ImangaliViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBAction func countStepper(_ sender: UIStepper) {
        counterLabel.text = String(Int(sender.value))
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
