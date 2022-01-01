//
//  CoffeeFilter.swift
//  ambrosial
//
//  Created by Jason Lin on 12/26/21.
//

import Foundation
import SwiftUI

struct CoffeeFilter: Decodable, Identifiable {
    
    var id: Int
    var name: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
}
