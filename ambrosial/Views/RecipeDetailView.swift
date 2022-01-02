//
//  RecipeDetailView.swift
//  ambrosial
//
//  Created by yuhongHackintosh on 1/1/22.
//

import SwiftUI

struct RecipeDetailView: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var recipe: Recipe
    
    var recipeIndex: Int {
        modelData.recipes.firstIndex(where: { $0.id == recipe.id })!
    }
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Text(recipe.recipeName)
                    .font(.title)
                FavoriteButton(isSet: $modelData.recipes[recipeIndex].isFavorite)
            }
            Text("Date Created: " + recipe.recipeDate)
                .font(.title3)
                .foregroundColor(.secondary)
            Divider()
            Text("Brew method: " + recipe.brewMethod)
            Text("Filter: " + recipe.coffeeFilter)
            Text("Ratio (Coffee:Water): " + String(recipe.ratioBean) + ":" + String(recipe.ratioWater))
            Text("Bean Type: " + recipe.bean)
            Text("Grind Size: " + recipe.grindSize)
            Text("Temperature (Celcius): " + String(recipe.temperature))
            Text("Description: " + recipe.description)
                
        }
        .padding()
        .navigationTitle(recipe.recipeName)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    
    static let modelData = ModelData()
    
    static var recipe = ModelData().recipes
    
    static var previews: some View {
        RecipeDetailView(recipe: modelData.recipes[0])
            .environmentObject(modelData)
    }
}
