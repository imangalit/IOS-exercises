//
//  ViewController.swift
//  login
//
//  Created by Имангали on 4/13/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var comment: UILabel!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!

    @IBAction func loginButton(_ sender: UIButton) {
        if usernameField.text == "admin" && passwordField.text == "admin" {
            performSegue(withIdentifier: "imangali", sender: nil)
        }
        else if usernameField.text == "guest" && passwordField.text == "guest" {
            performSegue(withIdentifier: "guest", sender: nil)
        }
        else {
            comment.text = "Username or password is not correct"
        }
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            segue.destination.navigationItem.title = usernameField.text
//        }
}

