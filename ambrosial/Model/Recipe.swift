//
//  Recipe.swift
//  ambrosial
//
//  Created by yuhongHackintosh on 1/1/22.
//

import Foundation
import SwiftUI

struct Recipe: Decodable, Identifiable {
    var id: Int
    
    var brewMethod: String
    var coffeeFilter: String
    
    var ratioBean: Int
    var ratioWater: Int
    
    
    var bean: String
    var grindSize: String
    
    var temperature: Int
    var description: String
    
    
    
}


