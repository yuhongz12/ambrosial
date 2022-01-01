//
//  ContentView.swift
//  ambrosial
//
//  Created by yuhongMac on 10/21/21.
//

// TASKS:
// 1) (DONE) Troubleshoot view stack appearance that is visually nested (ie. pushed view does not cover entire screen)
// 2) (DONE) Program CoffeeFilterView() and CoffeeFilterElement()
// 3) Skip to programming Recipe summary and Recipe (model data), write to database file (.json, for now)
// 4) Make it so that when a brew method is picked, the next view only displays compatibleFilters
// Hi Yuhong
// fewaf

import SwiftUI

extension UIScreen{
    static let screenWidth = UIScreen.main.bounds.width
    static let screenHeight = UIScreen.main.bounds.height
    static let screenSize = UIScreen.main.bounds
}

struct ContentView: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                HStack {
                    
                    Text("Home")
                        .font(.title)
                        .foregroundColor(Color.black)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding(.all, UIScreen.screenWidth * 0.05)
                    
                    Spacer()
                    
                }
                
                Spacer()
                
                // Starred Recipe Element
                VStack {
                    
                    HStack {
                        
                        Text("Favorites")
                            .font(.title2)
                            .foregroundColor(Color.black)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding(.all, UIScreen.screenWidth * 0.05)
                        
                        Spacer()
                        
                    }
                }
                
                Spacer()
                
                // Recipe List Scroll Bar
                
                ScrollView {
                    VStack {
                        // Should retrieve list from a database and sort into an array and display
                        ForEach(1...40, id: \.self) {
                            Text("Coffee Recipe \($0)")
                                .frame(width: UIScreen.screenWidth * 0.9, alignment: .leading)
                        }
                    }
                }.frame(width: UIScreen.screenWidth,
                        height: UIScreen.screenHeight * 0.3)
                
                Spacer()
                
                HStack {
                    Spacer()
                    NavigationLink {
                        BrewMethodView()
                            .environmentObject(ModelData())
                    } label: {
                        Image("plus-in-circle")
                            .resizable()
                            .frame(width: 60.0, height: 60.0)
                            .padding()
                    }
                }
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

