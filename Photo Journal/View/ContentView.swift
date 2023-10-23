//
//  SecondView.swift
//  Photo Journal
//
//  Created by Marcus Chang on 2023/10/21.
//

import SwiftUI


struct ContentView: View {
    
    @State var showImagePicker: Bool = false
    @StateObject var imageData = ImageData()
    
    var body: some View {
        NavigationView {
            VStack{
                if imageData.imageNote.isEmpty {
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
                    imageData.addNote(image: image, title: "Reflect!", desc: "")
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
                            imageData.resetUserData()
                        }
                    } label: {
                        Label("Trash", systemImage: "trash")
                    }
                    .tint(.red)
                }
            }
        }
        .environmentObject(imageData)
    }
}

    
#Preview {
    ContentView()
}





