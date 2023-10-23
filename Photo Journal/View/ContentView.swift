//
//  SecondView.swift
//  Photo Journal
//
//  Created by Marcus Chang on 2023/10/21.
//

import SwiftUI


struct ContentView: View {
    
    @State var showImagePicker: Bool = false
    
    var body: some View {
        NavigationView {
            VStack{
                if true {
                    Text("Add a note")
                        .italic()
                        .foregroundColor(.gray)
                } else {
                    HomeView()
                }
            }
            .navigationTitle("Self-Analysis")
            .sheet(isPresented: $showImagePicker) {
                ImagePicker(sourceType: .photoLibrary) {
                    image in
                    // Add notes and images to array
                    print("\(image.scale)")
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showImagePicker.toggle()
                    } label: {
                        Label("Image", systemImage: "photo.on.rectangle.angled")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        withAnimation {
                            //Reset user data: journals
                        }
                    } label: {
                        Label("Trash", systemImage: "trash")
                    }
                    .tint(.red)
                }
            }
        }
    }
}

    
#Preview {
    ContentView()
}





