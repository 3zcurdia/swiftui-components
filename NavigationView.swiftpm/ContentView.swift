import SwiftUI

struct Element: Identifiable {
    let id: Int
    let name: String
    let systemImage: String
}

struct ContentView: View {
    let elements: [Element] = [
        Element(id: 1, name: "Lorem", systemImage: "globe.americas"),
        Element(id: 2, name: "Ipsum", systemImage: "flame"),
        Element(id: 3, name: "Sit", systemImage: "bolt.fill"),
        Element(id: 4, name: "Amet", systemImage: "hare"),
        Element(id: 5, name: "Consectetur", systemImage: "tortoise"),
        Element(id: 6, name: "Quet", systemImage: "leaf")
    ]
    var body: some View {
        NavigationView {
            List(elements) { element in
                RowView(element: element)
            }
            .navigationTitle("Navigation")
        }
    }
}

struct RowView: View {
    let element: Element
    var body: some View {
        NavigationLink {
            DetailView(element: element)
        } label: {
            HStack {
                Text(element.name)
                    .font(.title3)
            }
        }
    }
}

struct DetailView: View {
    let element: Element
    var body: some View {
        VStack {
            Image(systemName: element.systemImage)
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(element.name)
            Spacer()
        }
    }
}
