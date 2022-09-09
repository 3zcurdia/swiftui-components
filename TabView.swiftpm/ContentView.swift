import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ListView().tag(0).badge(3).tabItem {
                Image(systemName: "list.dash")
                Text("List")
            }
            SettingsView().tag(1).tabItem {
                Image(systemName: "gear")
                Text("Settings")
            }
        }
    }
}

struct ListView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Item 1")
                Text("Item 2")
                Text("Item 3")
            }.navigationTitle("List")
        }
    }
}


struct SettingsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("lorem ispum")
            }.navigationTitle("Settings")
        }
    }
}
