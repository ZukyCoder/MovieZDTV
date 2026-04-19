import SwiftUI

struct HeroItem: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("tvOS with SwiftUI")
                .font(.largeTitle).bold()
            
            Spacer(minLength: 300)
            
            HStack {
                Button("Show") {}
                Button("More Info…") {}
                Spacer()
            }
            .padding(.bottom, 100)
            
            Spacer()
        }
    }
}

#Preview {
    HeroItem()
}
