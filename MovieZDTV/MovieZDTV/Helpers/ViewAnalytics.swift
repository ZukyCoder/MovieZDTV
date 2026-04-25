import SwiftUI

#if canImport(FirebaseAnalytics)
import FirebaseAnalytics
#endif

enum ViewAnalytics {
    static func logView(name: String) {
        #if canImport(FirebaseAnalytics)
        Analytics.logEvent(AnalyticsEventScreenView, parameters: [
            AnalyticsParameterScreenName: name
        ])
        #endif
    }
}

extension View {
    func trackViewAnalytics(_ name: String) -> some View {
        onAppear {
            ViewAnalytics.logView(name: name)
        }
    }
}
