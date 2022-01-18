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
    
    @IBOutlet weak var image: UIImageView!
    
    // Оутлет для лейбла с результатом
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
    
    var nextimage = 0
    
    var logoImage: [UIImage] = [
        UIImage(named: "png.png")!,
        UIImage(named: "splash.png")!,
        UIImage(named: "big.png")!
    ]
    
    
    
    //Экшн для кнопки
    @IBAction func button(_ sender: Any) {
        result.text = someTextField.text
        
        self.view.endEditing(true)

    }
    
    
    
    
    @IBAction func buttonColor(_ sender: Any) {
        //view.backgroundColor = UIColor.yellow
        nextimage += 1
        //images[nextimage%3]
        
        /*if nextimage > 2 {
            nextimage = 0
        }*/
        
        image.image = logoImage[nextimage%3]
        
    }
    
    
}
    
    
    
    



