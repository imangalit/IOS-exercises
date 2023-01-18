//
//  IntroVC.swift
//  PersonalityQuiz
//
//  Created by Имангали on 4/28/22.
//

import UIKit

class IntroVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startQuizPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "startQuiz", sender: nil)
    }
    @IBAction func unwindToIntroVC(segue: UIStoryboardSegue) {
        
    }
}

