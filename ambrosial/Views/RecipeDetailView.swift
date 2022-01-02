//
//  RecipeDetailView.swift
//  ambrosial
//
//  Created by yuhongHackintosh on 1/1/22.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(recipe.recipeName)
                .font(.title)
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
    
    static var recipe = ModelData().recipes
    
    static var previews: some View {
        RecipeDetailView(recipe: recipe[0])
    }
}
