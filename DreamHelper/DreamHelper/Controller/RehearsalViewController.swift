//
//  RehearsalViewController.swift
//  DreamHelper
//
//  Created by Rodrigo Salles Stefani on 15/02/18.
//  Copyright © 2018 Rodrigo Salles Stefani. All rights reserved.
//

import UIKit

class RehearsalViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    
    @IBOutlet weak var textField: UITextField!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return RehearsalStore.main.nome.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RehearsalTableViewCell
        
        let item = indexPath.item
        
        cell.label.text = RehearsalStore.main.nome[item]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete{
            RehearsalStore.main.nome.remove(at: indexPath.row)
            myTableView.reloadData()
        }
    }
    
    
    @IBAction func addItem(_ sender: Any) {
        
        RehearsalStore.main.nome.append(textField.text!)
        textField.text = ""
        myTableView.reloadData()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    
}

