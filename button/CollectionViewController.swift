//
//  CollectionViewController.swift
//  button
//
//  Created by Сергей Яковлев on 20.01.2022.
//

import Foundation
import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let mi = ["big","splash","png","reb","rew","big","bgt","ber","rrr","kkk","jjj","ttt","fff","eee","fds","hgt","hgt-1","ddd",]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let galery = collectionView.dequeueReusableCell(withReuseIdentifier: "galery", for: indexPath) as! ViewControllerCollectionViewCell
        
        galery.miImage.image = UIImage(named: mi[indexPath.row])
        galery.miImage.frame = .init(x: 0, y: 0, width: view.frame.width / 5, height: view.frame.width / 5)
        
        return galery
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return .init(width: view.frame.width / 5, height: view.frame.width / 5)
    }
}

    
    
    

