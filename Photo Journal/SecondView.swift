//
//  SecondView.swift
//  Photo Journal
//
//  Created by Marcus Chang on 2023/10/21.
//

import SwiftUI

struct SecondView: View {
    @State var isShowAlert = false
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
            VStack{
                Spacer()
                Text("Your journey so far...")
                Spacer()
                Button("Delete notes") {
                    isShowAlert = true
                }
                Spacer()
            }
            
        }
        .alert("Do you really want to delete it?", isPresented: $isShowAlert) {
            Button("Yes") {
            }
            Button("Nevermind") {
            }
        }
        
    }
    
}

#Preview {
    SecondView()
}
