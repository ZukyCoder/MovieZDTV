

import SwiftUI
import Combine

struct MainView: View {
    @FocusState var belowFold:Bool
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack(alignment: .leading, spacing: 26){
                HeroItem()
                .onScrollVisibilityChange { visible in
                    withAnimation {
                        belowFold = !visible
                    }
                }
                
                Section("Movie Shelf"){
                    CarouselView(type: .standar)
                        
                }
                
                Section("Standar Content") {
                    CarouselView(type: .square)
                }
                
                Section("Movie Card"){
                    CarouselView(type: .card)
                }
            }
            .scrollTargetLayout()
        }
        .background(alignment: .top) {
            // here should be the image
            if !belowFold {
                Rectangle()
                    .fill(Color.pink.opacity(0.5))
                    .aspectRatio(contentMode: .fill)
                    .mask {
                        LinearGradient(stops: [
                            .init(color: .black, location: 0.0),
                            .init(color: .black, location: 0.45),
                            .init(color: .black.opacity(0), location: 0.8)
                        ], startPoint: .top, endPoint: .bottom)
                    }
                    .ignoresSafeArea()
            }
        }
        .scrollTargetBehavior(.viewAligned)
    }
}

#Preview {
    MainView()
}
