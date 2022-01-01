//
//  BrewMethod.swift
//  ambrosial
//
//  Created by Jason Lin on 12/26/21.
//

import Foundation
import SwiftUI

struct BrewMethod: Decodable, Identifiable {
    var id: Int
    var name: String // brewer
    var brand: String // manufacturer name (ie. Hario, Aeropress, etc.)
    var compatibleFilters: Array<String> // contains filter.name's
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
