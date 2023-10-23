//
//  HomeView.swift
//  Photo Journal
//
//  Created by Marcus Chang on 2023/10/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var imageData : ImageData
    
    var body: some View {
        ForEach(imageData.imageNote){ note in
            NavigationLink(destination: NotesDetailView(note:note)) {
                HStack {
                    Image(uiImage: UIImage(data: note.image)!)
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                    
                    VStack(alignment: .leading) {
                        Text(note.title)
                            .lineLimit(2)
                        
                    }
                }
            }
            
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(ImageData())
}
