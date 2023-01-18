//
//  CarViewController.swift
//  cars
//
//  Created by Имангали on 5/27/22.
//

import UIKit

class CarViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var volumeLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    var index : Int?
    
    @IBAction func editButton(_ sender: UIButton) {
        performSegue(withIdentifier: "showEditDetails", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? editViewController {
            destination.index = index
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = cars[index!].title
        descLabel.text = cars[index!].descp
        imageView.image = cars[index!].img
        
        yearLabel.text = cars[index!].year
        volumeLabel.text = cars[index!].volume
        priceLabel.text = cars[index!].price
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    @IBAction func unwind(_ sender: UIStoryboardSegue) {
    }
}
