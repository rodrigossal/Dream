//
//  ConcertsViewController.swift
//  DreamHelper
//
//  Created by Rodrigo Salles Stefani on 09/02/18.
//  Copyright © 2018 Rodrigo Salles Stefani. All rights reserved.
//

import Foundation
import UIKit

class ConcertsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    let reuseIdentifier = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! TableViewCell
        return cell
    }
    

}

