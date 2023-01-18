//
//  ViewController.swift
//  studentData
//
//  Created by Имангали on 4/19/22.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var mainTableView: UITableView!
    
    @IBOutlet weak var studentPhoto: UIImageView!
    
    let rowsTextField = ["ID", "Login", "Last name", "First name", "Middle name", "E-mail", "Mob. phone"]
    let rowsSelectField = ["Gender", "Martial status"]
    let rowsSelectFieldMenu = [["Male", "Female"], ["Married", "Single"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mainTableView.delegate = self
        mainTableView.dataSource = self
        studentPhoto.image = UIImage(named: "maxresdefault")
    }
    
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowsTextField.count + rowsSelectField.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.row < rowsTextField.count) {
            let cell = mainTableView.dequeueReusableCell(withIdentifier: "textFieldCell", for: indexPath) as! TextFieldCell
            cell.nameLabel.text = rowsTextField[indexPath.row]
            return cell
        }
        else {
            let cell = mainTableView.dequeueReusableCell(withIdentifier: "selectFieldCell", for: indexPath) as! SelectFieldCell
            cell.nameLabel.text = rowsSelectField[indexPath.row - rowsTextField.count]
            var array = [UIMenuElement]()
            for i in rowsSelectFieldMenu[indexPath.row - rowsTextField.count] {
                let item = UIAction(title: i) { (action) in }
                array.append(item)
            }
            cell.popUpButton.menu = UIMenu(children: array)
            return cell
        }
    }
    
    
}
