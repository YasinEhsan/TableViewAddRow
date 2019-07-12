//
//  CarTableViewCell.swift
//  TableViewAddRow
//
//  Created by Yasin Ehsan on 7/12/19.
//  Copyright © 2019 Yasin Ehsan. All rights reserved.
//

import UIKit

class CarTableViewCell: UITableViewCell {

    @IBOutlet weak var carLabel: UILabel!
    
    func setCar(carName: String){
        carLabel.text = carName
    }

}
