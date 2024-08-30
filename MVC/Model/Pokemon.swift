//
//  Pokemon.swift
//  MVC
//
//  Created by Rafael Gonzalez on 16/08/24.
//

import Foundation

struct Pokemon {
    let name : String
    let image : String
    let category : String
    let ability : String
    
    init(dict: [String : String]) {
        self.name = dict["name"]!
        self.image = dict["image"]!
        self.category = dict["category"] ?? "Not filled"
        self.ability = dict["ability"] ?? "Not filled"
    }
}
