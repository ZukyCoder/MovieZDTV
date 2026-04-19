import SwiftUI

struct SquareItem: View {
    var backColor:Color
    
    var body: some View {
        VStack() {
            Image("discovery_landscape")
                .resizable()
                .aspectRatio(250/250, contentMode: .fit)
                .containerRelativeFrame(.horizontal, count: 6, spacing: 40)
            Text("TITLE")
        }
        .background(backColor)
        .cornerRadius(50)
    }
}

#Preview {
    SquareItem(backColor: .cyan)
}
