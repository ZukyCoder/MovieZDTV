//
//  MovieZDTVApp.swift
//  MovieZDTV
//
//  Created by Zuky on 17/04/2026.
//

import SwiftUI
import FirebaseCore

@main
struct MovieZDTVApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    
}
