
//
//  ChooseViewController.swift
//  DreamHelper
//
//  Created by Rodrigo Salles Stefani on 08/02/18.
//  Copyright © 2018 Rodrigo Salles Stefani. All rights reserved.
//

import Foundation
import UIKit

class ChooseViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    
    
    
    let reuseIdentifier = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("oiiiii")
        return OptionStore.main.nome.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! CollectionViewCell
        print("oiiiii")
        let item = indexPath.item
        
        cell.label.text = OptionStore.main.nome[item]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "concerts", sender: self)
        
    }
}
