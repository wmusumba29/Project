//
//  Features.swift
//  events
//
//  Created by William Musumba on 10/01/2018.
//  Copyright © 2018 William Musumba. All rights reserved.
//

import Foundation

struct Feature {
    private (set) public var choice: String
    
    init(choice: String){
        self.choice = choice
    }
}

struct Category {
    private (set) public var categories: String
    
    init(categories: String){
        self.categories = categories
    }
}
