//
//  HomeView.swift
//  ambrosial
//
//  Created by yuhongHackintosh on 1/1/22.
//

import SwiftUI

struct HomeView: View {
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

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
