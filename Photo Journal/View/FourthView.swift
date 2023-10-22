//
//  FourthView.swift
//  Photo Journal
//
//  Created by Marcus Chang on 2023/10/21.
//

import SwiftUI

struct FourthView: View {
    @State var inputText = ""
    @State var isShowDialogue = false
    var body: some View {
        VStack{
            Spacer()
            TextField("Inner Thoughts?", text: $inputText)
                .padding()
            Spacer()
            Button("Keep this journal"){
                
            }
            .padding()
            Spacer()
            Button("Add a Photo"){
                isShowDialogue = true
            }
            .padding()
            Spacer()
        }
        .confirmationDialog("Add Photo", isPresented: $isShowDialogue) {
            Button("Take a Photo"){
                
            }
            Button("Choose Photo from Library"){
                
            }
        }
    }
    
}

#Preview {
    FourthView()
}
