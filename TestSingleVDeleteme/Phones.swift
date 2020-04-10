//
//  Phones.swift
//  TestSingleVDeleteme
//
//  Created by Patrick O'Donoghue on 4/10/20.
//  Copyright © 2020 Patrick O'Donoghue. All rights reserved.
//

import Foundation

class Phones: MasterObject {
    var model: String
    
    init(name: String, description: String, model: String) {
        self.model = model
        super.init(name, description)
    }
}
