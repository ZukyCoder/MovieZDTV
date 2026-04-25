import SwiftUI

struct SquareItem: View {
    var backColor:Color
    
    var body: some View {
        VStack() {
            Image("discovery_landscape")
                .resizable()
                .aspectRatio(250/250, contentMode: .fit)
            Text("TITLE")
        }
        .background(backColor)
        .cornerRadius(50)
    }
}

#Preview {
    SquareItem(backColor: .cyan)
}
