//
//  StandarItem.swift
//  MovieZDTV
//
//  Created by Zuky on 19/04/2026.
//

import SwiftUI

struct StandarItem: View {
    var backColor:Color
        
    var body: some View {
        VStack() {
            Image("discovery_landscape")
                .resizable()
                .aspectRatio(250/375, contentMode: .fit)
                .containerRelativeFrame(.horizontal, count: 6, spacing: 40)
                .background(backColor)
                .cornerRadius(50)
            Text("Borderless Portrait 1")
        }
    }
}

#Preview {
    StandarItem(backColor: .yellow)
}
