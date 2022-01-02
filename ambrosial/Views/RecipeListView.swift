//
//  RecipeListView.swift
//  ambrosial
//
//  Created by yuhongHackintosh on 1/1/22.
//

import SwiftUI

struct RecipeListView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(ModelData().recipes) { recipe in
                    NavigationLink {
                        RecipeDetailView(recipe: recipe)
                            .environmentObject(ModelData())
                    } label: {
                        RecipeElement(recipe: recipe)
                    }
                }
            }.navigationTitle("All Recipes")
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
            .environmentObject(ModelData())
    }
}
