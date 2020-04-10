//
//  Books.swift
//  TestSingleVDeleteme
//
//  Created by Patrick O'Donoghue on 4/10/20.
//  Copyright © 2020 Patrick O'Donoghue. All rights reserved.
//

import Foundation

class Books: MasterObject {
    var author: String
    
    init(name: String, description: String, author: String) {
        self.author = author
        super.init(name, description)
    }
}
