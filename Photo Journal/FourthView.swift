//
//  FourthView.swift
//  Photo Journal
//
//  Created by Marcus Chang on 2023/10/21.
//

import SwiftUI

struct FourthView: View {
    @State var inputText = ""
    var body: some View {
    Spacer()
        TextField("Inner Thoughts?", text: $inputText)
            .padding()
    Spacer()
        Button("Keep this journal"){
            
        }
        .padding()
    Spacer()
    }
}

#Preview {
    FourthView()
}
