//
//  CarList.swift
//  cars
//
//  Created by Имангали on 5/27/22.
//

import Foundation
import UIKit

struct CarList {
    var title: String
    var descp: String
    let img: UIImage
    
    var year: String
    var volume: String
    var price: String
}

var cars = [CarList(title: "Mercedes", descp: "Maybach S-Class 2022", img: (UIImage(named: "maybach")!), year: "2022", volume: "3.5", price: "20000"),
            CarList(title: "Audi", descp: "Audi e-tron GT 2019", img: (UIImage(named: "audi")!), year: "2019", volume: "3.5", price: "20000"),
            CarList(title: "Mercedes", descp: "Maybach GLS 600", img: (UIImage(named: "gls")!), year: "2020", volume: "3.5", price: "20000"),
            CarList(title: "Lexus", descp: "Lexus LX 600", img: (UIImage(named: "lexus")!), year: "2022", volume: "3.5", price: "20000"),
            CarList(title: "Toyota", descp: "Land Cruiser 300", img: (UIImage(named: "toyota")!), year: "2021", volume: "3.5", price: "20000")]


//    let cars = [CarList(title: "Mercedes", descp: "Maybach S-Class 2022", img: UIImage(named: "maybach")!), CarList(title: "Audi", descp: "Audi e-tron GT 2019", img: UIImage(named: "audi")!), CarList(title: "Mercedes", descp: "Maybach GLS 600", img: UIImage(named: "gls")!), CarList(title: "Lexus", descp: "Lexus LX 600", img: UIImage(named: "lexus")!), CarList(title: "Toyota", descp: "Toyota Land Cruiser 300", img: UIImage(named: "toyota")!)]
//
