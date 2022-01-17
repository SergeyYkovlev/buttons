//
//  ViewController.swift
//  button
//
//  Created by Сергей Яковлев on 17.01.2022.
//

import UIKit


class ViewController: UIViewController {
    
    // Оутлет для текстового поя
    @IBOutlet weak var someTextField: UITextField!
    
    // Оутлет для лейбла с результатом
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    //Экшн для кнопки
    
    @IBAction func button(_ sender: Any) {
        
       
        
        result.text = someTextField.text
    }
    
    
    
    
}


