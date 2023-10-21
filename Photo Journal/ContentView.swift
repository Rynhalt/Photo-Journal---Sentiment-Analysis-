//
//  ContentView.swift
//  Photo Journal
//
//  Created by Marcus Chang on 2023/10/20.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State var inputText = ""
    @State var isShowSecondView = false

    var body: some View {
        NavigationStack{
            VStack(spacing: 20) {
                
                Spacer()
                    TextField("Inner Thoughts?", text: $inputText)
                Spacer()
                    Button("Keep Journal"){
                    }
                Spacer()
                NavigationLink {
                    SecondView()
                } label: {
                    Text("Look at Past Journals")
                }
                Spacer()
                Button("What is this app?"){
                    isShowSecondView = true
                }
                .sheet(isPresented: $isShowSecondView){
                    ThirdView()
                }
                Spacer()

                   
            }
            .padding()
            .navigationTitle("Home")
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
