//
//  Cars.swift
//  TestSingleVDeleteme
//
//  Created by Patrick O'Donoghue on 4/10/20.
//  Copyright © 2020 Patrick O'Donoghue. All rights reserved.
//

import Foundation

class Cars: MasterObject {
    var model: String
    var make: String
    
    init(name: String, description: String, model: String, make: String) {
        self.model = model
        self.make = make
        super.init(name, description)
    }
}
