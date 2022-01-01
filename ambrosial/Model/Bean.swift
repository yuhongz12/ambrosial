//
//  Bean.swift
//  ambrosial
//
//  Created by Jason Lin on 12/26/21.
//

import Foundation
import SwiftUI

struct Bean: Decodable, Identifiable {
    
    var id: Int
    var name: String
    var roastLevel: String
    var roasterName: String
    var tastingNotes: String
    var description: String
    
}
