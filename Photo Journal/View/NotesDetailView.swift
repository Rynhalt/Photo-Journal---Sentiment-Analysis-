//
//  NotesDetailView.swift
//  Photo Journal
//
//  Created by Marcus Chang on 2023/10/22.
//

import SwiftUI

struct NotesDetailView: View {
    @EnvironmentObject var imageData: ImageData
    @State var note: ImageNote
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        Form {
            Section {
                HStack {
                    Spacer()
                    Image(uiImage: UIImage(data: note.image)!)
                        .resizable()
                        .frame(width: 300, height: 300, alignment: .center)
                    Spacer()
                }
                TextField("Edit me!", text: $note.title)
                    .textSelection(.enabled)
                    .onTapGesture {
                        note.title = ""
                    }
                ZStack{
                    TextEditor(text: $note.description)
                        .textSelection(.enabled)
                        .frame(height:200)
                    
                    VStack {
                        Spacer()
                        HStack{
                            Spacer()
                            Text("\(note.description.count)/120")
                                .foregroundColor(.gray)
                                .padding()
                        }
                    }
                }
                HStack{
                    Spacer()
                    Button("Confirm Changes") {
                        imageData.editNote(id: note.id, title: note.title, description: note.description)
                        presentationMode.wrappedValue.dismiss()
                    }
                    Spacer()
                }
            }
        }
    }
}


struct NoteDetailView_Previews : PreviewProvider {
    static var previews: some View {
        let tempImage = UIImage(systemName: "map")?.pngData()
        
        NotesDetailView(note:ImageNote(id: UUID(), image: tempImage!, title: "Test", description: "TestDescription"))
            .environmentObject(ImageData())
    }
}
