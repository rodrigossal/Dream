//
//  Option.swift
//  DreamHelper
//
//  Created by Rodrigo Salles Stefani on 09/02/18.
//  Copyright © 2018 Rodrigo Salles Stefani. All rights reserved.
//

import UIKit

class Option {
    
    
var choice = [String]()
    
    init() {
        choice.append("concerts")
        choice.append("rehearsal")
        choice.append("incomes")
    }
    
    func witchOption(_ n :Int) -> String{
        return choice[n]
    }
}
