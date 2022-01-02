//
//  ambrosialApp.swift
//  ambrosial
//
//  Created by yuhongMac on 10/21/21.
//

import SwiftUI

@main
struct ambrosialApp: App {
    
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
