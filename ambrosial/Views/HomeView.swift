//
//  HomeView.swift
//  ambrosial
//
//  Created by yuhongHackintosh on 1/1/22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var modelData: ModelData
    
    private var allRecipes: [Recipe] {
        modelData.recipes
    }

    private var favoriteRecipes: [Recipe] {
        allRecipes.filter { recipe in
            recipe.isFavorite
        }
    }

    var body: some View {
        
        NavigationView {
            ZStack {
                List {
                    Section (header: Text("Recent Recipes")) {
                        if allRecipes.isEmpty {
                            Text("You have no recipes. Please create one!")
                        } else {
                            ForEach (allRecipes.prefix(3)) { recipe in
                                NavigationLink {
                                    RecipeDetailView(recipe: recipe)
                                } label: {
                                    RecipeElement(recipe: recipe)
                                }
                            }
                        }
                    }
                    
                    Section (header: Text("Favorite Recipes")) {
                        if favoriteRecipes.isEmpty {
                            Text("You have no Favorite Recipes")
                        } else {
                            ForEach (favoriteRecipes.prefix(3)) { recipe in
                                NavigationLink {
                                    RecipeDetailView(recipe: recipe)
                                } label: {
                                    RecipeElement(recipe: recipe)

                                }
                            }
                        }
                    }
                }
                .navigationTitle("Home")
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        NavigationLink {
                            BrewMethodView()
                        } label: {
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .frame(width: 50, height: 50)
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ModelData())
    }
}
