//
//  CoffeeFilterElement.swift
//  ambrosial
//
//  Created by Jason Lin on 12/27/21.
//

import Foundation
import SwiftUI

struct CoffeeFilterElement: View {
    
    var coffeeFilter: CoffeeFilter
    
    var body: some View {
        
        HStack {
            coffeeFilter.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(coffeeFilter.name)
        }
    }
}

struct CoffeeFilterElement_Previews: PreviewProvider {
    
    static var coffeeFilters = ModelData().coffeeFilters
    
    static var previews: some View {
        Group {
            CoffeeFilterElement(coffeeFilter: coffeeFilters[0])
            CoffeeFilterElement(coffeeFilter: coffeeFilters[1])
        }.previewLayout(.fixed(width: 300, height: 100))
    }
}
