//
//  TableVievController.swift
//  button
//
//  Created by Сергей Яковлев on 18.01.2022.
//

import Foundation
import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    let number = ["89994572085", "89513458976", "89605743561"]
    let text = ["Misha", "Masha", "Sergey"]
    let animals = ["png", "big", "splash"]
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
        
        cell.myImage.image = UIImage(named: animals[indexPath.row])
        cell.myLabel.text = text[indexPath.row]
        cell.Telefon.text = number[indexPath.row]
        
        return(cell)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

