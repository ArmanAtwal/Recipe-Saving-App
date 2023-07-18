//
//  RecipeSaverApp.swift
//  RecipeSaver
//
//  Created by Arman Atwal on 7/15/23.
//

import SwiftUI

@main
struct RecipeSaverApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
