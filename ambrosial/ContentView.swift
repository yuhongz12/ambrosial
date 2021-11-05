//
//  ContentView.swift
//  ambrosial
//
//  Created by yuhongMac on 10/21/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            ZStack {
                
                Rectangle()
                    .frame(width: 390, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.254, brightness: 0.197)/*@END_MENU_TOKEN@*/)
                    
                HStack {
                    
                    Menu(/*@START_MENU_TOKEN@*/"Menu"/*@END_MENU_TOKEN@*/) {
                        /*@START_MENU_TOKEN@*/Text("Menu Item 1")/*@END_MENU_TOKEN@*/
                        /*@START_MENU_TOKEN@*/Text("Menu Item 2")/*@END_MENU_TOKEN@*/
                        /*@START_MENU_TOKEN@*/Text("Menu Item 3")/*@END_MENU_TOKEN@*/
                    }
                    .padding(.leading)
                    
                    Spacer()
                    
                    Text("Home Page")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Spacer()
                }
            }
            
            Spacer()
            
            // Recipe List Scroll Bar
            ScrollView {
                VStack {
                    Text("Recipe #1")
                    Text("Recipe #1")
                    Text("Recipe #1")
                    Text("Recipe #1")
                    Text("Recipe #1")
                    Text("Recipe #1")
                    Text("Recipe #1")
                    Text("Recipe #1")
                    Text("Recipe #1")
                }
                .frame(width: 300.0)
            }
            .frame(width: 390.0, height: 100.0)
            
            HStack {
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                }
                .padding(.all)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// this is a line of code
// hellow world
