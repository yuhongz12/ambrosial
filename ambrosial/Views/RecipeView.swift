//
//  RecipeView.swift
//  ambrosial
//
//  Created by yuhongHackintosh on 1/1/22.
//

import SwiftUI

struct RecipeView: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        RecipeListView()
            .environmentObject(ModelData())

    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView()
            .environmentObject(ModelData())
    }
}
