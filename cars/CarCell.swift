//
//  CarCell.swift
//  cars
//
//  Created by Имангали on 5/26/22.
//

import UIKit

class CarCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBAction func moreButton(_ sender: UIButton) {
    }
    @IBOutlet weak var cellImage: UIImageView!
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
