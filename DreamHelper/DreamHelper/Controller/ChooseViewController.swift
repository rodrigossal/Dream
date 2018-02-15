
//
//  ChooseViewController.swift
//  DreamHelper
//
//  Created by Rodrigo Salles Stefani on 08/02/18.
//  Copyright © 2018 Rodrigo Salles Stefani. All rights reserved.
//

import Foundation
import UIKit


//protocol WitchSegue {
//    func chooseSegue() -> String
//}
//
//class Concerts : WitchSegue{
//
//    func chooseSegue() -> String{
//        return "concerts"
//    }
//}
//class rehearsal : WitchSegue{
//
//    func chooseSegue() -> String{
//        return "rehearsal"
//    }
//}
//class incomes : WitchSegue{
//
//    func chooseSegue() -> String{
//        return "incomes"
//    }
//}


class ChooseViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    

    let reuseIdentifier = "cell"
    
    let option = Option()
    
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
        
        
        performSegue(withIdentifier: option.witchOption(indexPath.item) , sender: self)
    }
}
