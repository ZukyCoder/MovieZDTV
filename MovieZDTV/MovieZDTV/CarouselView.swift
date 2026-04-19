import SwiftUI

struct CarouselView: View {
    var type: ItemTypes
    
    let palette: [Color] = [
        .red,
        .orange,
        .yellow,
        .green,
        .mint,
        .teal,
        .blue,
        .indigo,
        .purple,
        .pink
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 40) {
                ForEach(palette, id: \.self) { color in
                    Button {} label: {
                        switch type {
                        case.card:
                            CardItem(color: color)
                                .containerRelativeFrame(.horizontal, count: 3, spacing: 48)
                        case .standar:
                            StandarItem(backColor: color)
                                .containerRelativeFrame(.horizontal, count: 6, spacing: 40)
                        case .square:
                            SquareItem(backColor: color)
                                .containerRelativeFrame(.horizontal, count: 6, spacing: 40)
                        }
                    }
                }
            }
        }
        .scrollClipDisabled()
        .buttonStyle(.borderless)
    }
}

#Preview {
    CarouselView(type: .standar)
}
