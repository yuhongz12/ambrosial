//
//  BrewMethodView.swift
//  ambrosial
//
//  Created by Jason Lin on 12/26/21.
//

import SwiftUI

struct BrewMethodView: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        
        List {
            ForEach(modelData.brewMethods) { brewMethod in
                NavigationLink {
                    CoffeeFilterView()
                        .environmentObject(ModelData())
                } label: {
                    HStack {
                        Spacer()
                        BrewMethodElement(brewMethod: brewMethod)
                        Spacer()
                    }
                }
            }
        }
        .navigationTitle("Brew Methods")
    }
}


struct BrewMethodView_Previews: PreviewProvider {
    static var previews: some View {
        BrewMethodView()
            .environmentObject(ModelData())
    }
}

