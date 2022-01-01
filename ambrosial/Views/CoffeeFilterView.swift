//
//  CoffeeFilterView.swift
//  ambrosial
//
//  Created by Jason Lin on 12/26/21.
//

import SwiftUI

struct CoffeeFilterView: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        
        List {
            ForEach(modelData.coffeeFilters) { coffeeFilter in
                NavigationLink {
                    BeanView()
                        .environmentObject(ModelData())
                } label: {
                    CoffeeFilterElement(coffeeFilter: coffeeFilter)
                }
            }
        }.navigationTitle("Coffee Filters")
    }
}

struct CoffeeFilterView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeFilterView()
            .environmentObject(ModelData())
    }
}
