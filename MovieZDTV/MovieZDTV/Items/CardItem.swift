import SwiftUI

struct CardItem: View {
    var color: Color
    
    var body: some View {
            HStack(alignment: .top, spacing: 10) {
                Image("discovery_landscape")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
                VStack(alignment: .leading) {
                    Text("title")
                        .font(.body)
                    Text("Subtitle text goes here, limited to two lines")
                        .font(.caption2)
                        .foregroundStyle(.secondary)
                        .lineLimit(2)
                    Spacer(minLength: 0)
                    HStack(spacing: 4) {
                        ForEach(1..<4) { _ in
                            Image(systemName: "ellipsis.rectangle.fill")
                        }
                    }
                    .foregroundStyle(.secondary)
                }
            }
            .padding([.leading, .top, .bottom], 12)
            .padding(.trailing, 20)
            .frame(maxWidth: .infinity)
            .background(color)
            .cornerRadius(50)
    }
}

#Preview {
    CardItem(color: .red)
}
