//
//  ViewController.swift
//  button
//
//  Created by Сергей Яковлев on 17.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var someTextField: UITextField!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var result: UILabel!
    
    var nextimage = 0
    
    // image array
    var logoImage: [UIImage] = [
        UIImage(named: "png.png")!,
        UIImage(named: "splash.png")!,
        UIImage(named: "big.png")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Action for text wrap button
    @IBAction func button(_ sender: Any) {
        result.text = someTextField.text
        self.view.endEditing(true)
    }
    
    //next image on background
    @IBAction func buttonColor(_ sender: Any) {
        nextimage += 1
        image.image = logoImage[nextimage%3]
    }
}
    
    
    
    



