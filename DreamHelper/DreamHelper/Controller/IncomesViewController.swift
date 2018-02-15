//
//  IncomesViewController.swift
//  DreamHelper
//
//  Created by Rodrigo Salles Stefani on 15/02/18.
//  Copyright © 2018 Rodrigo Salles Stefani. All rights reserved.
//

import UIKit
import SwifterSwift

class IncomesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    
    @IBOutlet weak var myTableView: UITableView!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return IncomesStore.main.incomes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! IncomesTableViewCell
        
        let item = indexPath.item
        
        cell.label.text = String(IncomesStore.main.incomes[item])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete{
            IncomesStore.main.incomes.remove(at: indexPath.row)
            myTableView.reloadData()
            calculaResltado()
        }
    }
    
    
    @IBAction func addItem(_ sender: Any) {
        
        IncomesStore.main.incomes.append(Int(textField.text!)!)
        textField.text = ""
        myTableView.reloadData()
        calculaResltado()
        
    }
    
    @IBAction func removeItem(_ sender: Any) {
        IncomesStore.main.incomes.append(-Int(textField.text!)!)
        textField.text = ""
        myTableView.reloadData()
        calculaResltado()
        
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
    
    func calculaResltado(){
      
        let resultado = IncomesStore.main.incomes.sum()
        if resultado >= 0{
            result.textColor = UIColor.green
        }else{
            result.textColor = UIColor.red
        }
        result.text = String(resultado)
        self.view.endEditing(true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
