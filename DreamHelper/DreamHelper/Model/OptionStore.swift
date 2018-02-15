//
//  Options.swift
//  DreamHelper
//
//  Created by Rodrigo Salles Stefani on 08/02/18.
//  Copyright © 2018 Rodrigo Salles Stefani. All rights reserved.
//

import Foundation

class OptionStore {
    
    static var main = OptionStore()
    
    var nome = [String]()
    
    init() {
        nome.append("PLAN CONCERTS")
        nome.append("REHEARSAL SONGS")
        nome.append("PLAN INCOME/OUTCOMES")
    }
    
    
}
