//
//  RecipeListView.swift
//  ambrosial
//
//  Created by yuhongHackintosh on 1/1/22.
//

import SwiftUI

struct RecipeListView: View {
    @EnvironmentObject var modelData: ModelData
    
    @State private var showFavoriteOnly = false
    
    var filteredRecipes: [Recipe] {
        modelData.recipes.filter { recipe in
            (!showFavoriteOnly || recipe.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favorites Only")
                }
                ForEach(filteredRecipes) { recipe in
                    NavigationLink {
                        RecipeDetailView(recipe: recipe)
                            .environmentObject(modelData)
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
