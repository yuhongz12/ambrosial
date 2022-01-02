//
//  RecipeElement.swift
//  ambrosial
//
//  Created by yuhongHackintosh on 1/1/22.
//

import Foundation
import SwiftUI

struct RecipeElement: View {
    
    var recipe: Recipe
    
    var body: some View {
        
        HStack {
            VStack (alignment: .leading){
                Text(recipe.recipeName)
                    .font(.title2)
                Text("Date Created: " + recipe.recipeDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Spacer()
            }
            Spacer()
            
            if recipe.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            } else {
                Image(systemName: "star")
            }
        }
        .padding()
    }
}

struct RecipeElement_Previews: PreviewProvider {
    
    static var recipe = ModelData().recipes
    
    static var previews: some View {
        Group {
            RecipeElement(recipe: recipe[0])
            RecipeElement(recipe: recipe[1])
        }
            .previewLayout(.fixed(width: 300, height: 100))
    }
}
