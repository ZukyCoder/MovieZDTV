import SwiftUI
import FirebaseCore

@main
struct MovieZDTVApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
    
    
}
