//
//  CarTableViewCell.swift
//  cars
//
//  Created by Имангали on 5/26/22.
//

import UIKit

class CarTableViewCell: UITableViewCell {
    
    @IBOutlet var myTitle: UILabel!
    @IBOutlet var myDesc: UILabel!
    @IBOutlet var myImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
