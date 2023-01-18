//
//  SelectFieldCell.swift
//  studentData
//
//  Created by Имангали on 4/20/22.
//

import UIKit

class SelectFieldCell: UITableViewCell {

    
    @IBOutlet weak var popUpButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        let maleItem = UIAction(title: "Male") { (action) in }
//        let femaleItem = UIAction(title: "Female") { (action) in }
//        var array = [UIMenuElement]()
//        array.append(maleItem)
//        array.append(femaleItem)
//        let menu = UIMenu(children: array)
//        popUpButton.menu = menu
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
