//
//  AddressesViewController.swift
//  studentData
//
//  Created by Имангали on 4/21/22.
//

import UIKit

class AddressesViewController: UIViewController {
   

    @IBOutlet weak var mainTableView: UITableView!
    
    let rowsTextField = ["Street, house"]
    let rowsSelectField = ["Country", "Region", "City"]
    let rowsSelectFieldMenu = [["Kazakhstan", "Russia", "Uzbekistan", "Korea", "China"], ["South Kazakhstan", "West Kazakhstan", "East Kazakhstan", "North Kazakhstan", "Almaty", "Akmola", "Shymkent"], ["Almaty","Astana","Shymkent", "Kyzylorda", "Aktau", "Aktobe"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mainTableView.delegate = self
        mainTableView.dataSource = self
    }
    
}
extension AddressesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowsTextField.count + rowsSelectField.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row < rowsSelectField.count {
            let cell = mainTableView.dequeueReusableCell(withIdentifier: "selectFieldCell", for: indexPath) as! SelectFieldCell
            cell.nameLabel.text = rowsSelectField[indexPath.row]
            var array = [UIMenuElement]()
            for i in rowsSelectFieldMenu[indexPath.row] {
                let item = UIAction(title: i) { (action) in }
                array.append(item)
            }
            cell.popUpButton.menu = UIMenu(children: array)
            return cell
        }
        else {
            let cell = mainTableView.dequeueReusableCell(withIdentifier: "textFieldCell", for: indexPath) as! TextFieldCell
            cell.nameLabel.text = rowsTextField[indexPath.row - rowsSelectField.count]
            return cell
        }
    }
    
    
}
