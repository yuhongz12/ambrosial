//
// TASKS:
// 1) (DONE) Troubleshoot view stack appearance that is visually nested (ie. pushed view does not cover entire screen)
// 2) (DONE) Program CoffeeFilterView() and CoffeeFilterElement()
// 3) Skip to programming Recipe summary and Recipe (model data), write to database file (.json, for now)
// 4) Make it so that when a brew method is picked, the next view only displays compatibleFilters

import SwiftUI

extension UIScreen{
    static let screenWidth = UIScreen.main.bounds.width
    static let screenHeight = UIScreen.main.bounds.height
    static let screenSize = UIScreen.main.bounds
}

struct ContentView: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .environmentObject(modelData)
            RecipeView()
                .tabItem {
                    Image(systemName: "doc.plaintext.fill")
                    Text("Recipes")
                }
                .environmentObject(modelData)
            SettingView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Setting")
                }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

