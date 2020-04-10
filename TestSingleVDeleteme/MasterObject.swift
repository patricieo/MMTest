//
//  MasterObject.swift
//  TestSingleVDeleteme
//
//  Created by Patrick O'Donoghue on 4/10/20.
//  Copyright © 2020 Patrick O'Donoghue. All rights reserved.
//

import Foundation

class MasterObject {
    var name: String
    var description: String = ""
    
    init(_ name: String, _ description: String) {
        self.name = name
        self.description = description
    }
}
