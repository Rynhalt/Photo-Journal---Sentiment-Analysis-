//
//  ContentView.swift
//  Photo Journal
//
//  Created by Marcus Chang on 2023/10/20.
//

import SwiftUI
import SwiftData

struct ContentView: View {

    var body: some View {
        VStack {
            Text("Hi!")
            Button("Add Journal") {
                print("added succesfully")
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
