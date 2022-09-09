import SwiftUI

struct ContentView: View {
    @State var value: Int = 0
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 0) {
                Image(systemName: value > 0 ? "star.fill" : "star").onTapGesture {
                    value = value == 1 ? 0 : 1
                }
                Image(systemName: value > 1 ? "star.fill" : "star").onTapGesture {
                    value = value == 2 ? 0 : 2
                }
                Image(systemName: value > 2 ? "star.fill" : "star").onTapGesture {
                    value = value == 3 ? 0 : 3
                }
                Image(systemName: value > 3 ? "star.fill" : "star").onTapGesture {
                    value = value == 4 ? 0 : 4
                }
                Image(systemName: value > 4 ? "star.fill" : "star").onTapGesture {
                    value = value == 5 ? 0 : 5
                }
            }
            .imageScale(.large)
            .foregroundColor(.yellow)
        }
    }
}
