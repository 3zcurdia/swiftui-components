import SwiftUI

struct ContentView: View {
    @State private var darkMode = false
    var body: some View {
        VStack {
            if darkMode {
                Image(systemName: "moon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
            } else {
                Image(systemName: "sun.max")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
            }
            Toggle(isOn: $darkMode) {
                Text("DarkMode")
                    .font(.title3)
            }.padding()
        }
    }
}
