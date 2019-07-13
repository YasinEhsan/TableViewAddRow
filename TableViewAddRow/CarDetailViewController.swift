//
//  CarDetailViewController.swift
//  TableViewAddRow
//
//  Created by Yasin Ehsan on 7/13/19.
//  Copyright © 2019 Yasin Ehsan. All rights reserved.
//

import UIKit

class CarDetailViewController: UIViewController {

    @IBOutlet weak var carTestField: UITextField!
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.destination is CarListViewController else { return }
        name = carTestField.text ?? "no car input"
        print(name + " prepapred fam")
    }
  

}
