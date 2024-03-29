//
//  CarListViewController.swift
//  TableViewAddRow
//
//  Created by Yasin Ehsan on 7/12/19.
//  Copyright © 2019 Yasin Ehsan. All rights reserved.
//

import UIKit

class CarListViewController: UIViewController {
    
    @IBOutlet var carTableView: UITableView!
    
    var cars = [String]()
    var newCar: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cars = ["BMW","Audi","Volkswagen"]
        
        carTableView.delegate = self
        carTableView.dataSource = self
    }
    
    @IBAction func cancel(segue:UIStoryboardSegue) {
        
    }
    
    @IBAction func done(segue:UIStoryboardSegue) {
        let carDetailVC = segue.source as! CarDetailViewController
        newCar = carDetailVC.carTestField.text ?? "lmfr"
        
        cars.append(newCar)
        carTableView.reloadData()
    }
    
//    @IBAction func done(sender: UIStoryboardSegue) {
//
//         guard let carDeetVC = sender.source as? CarDetailViewController  else { return }
//
//        newCar = carDeetVC.name
//        print(newCar + " new car")
//        cars.append(newCar + " new car")
//        carTableView.reloadData()
//
//    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
     func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension CarListViewController: UITableViewDelegate, UITableViewDataSource{
    
    // 1
     func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // 2
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    // 3
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let currCell = cars[indexPath.row]
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "carCell", for: indexPath) as? CarTableViewCell else {
            print("dequeue cell didn't work")
            fatalError()
        }
        
        cell.setCar(carName: currCell)
        return cell
    }
}
