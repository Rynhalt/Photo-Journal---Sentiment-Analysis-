//
//  FourthView.swift
//  Photo Journal
//
//  Created by Marcus Chang on 2023/10/21.
//

import SwiftUI

struct NewJournalView: View {
    
    @State var inputText = ""
    @State var isShowDialogue = false
    @State var newJournalTitle = ""
    @State var newJournalText = ""
    @StateObject var vm: MemoModel
    @Environment(\.presentationMode) private var presentationMode
    enum Field: Hashable { case title }
    
    @FocusState private var foucsedField: Field?
    
    var body: some View {
        VStack{
            TextField("Inner Thoughts?", text: $newJournalTitle)
                .padding(20)
                .frame(width: 400, height: 50)
                .font(.title)
                .focused($foucsedField, equals: .title)
            
            
            TextEditor(text: $newJournalText)
                .padding(.horizontal)
            
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
        .navigationBarTitle(Text(""), displayMode: .inline)
        .navigationBarItems(trailing: Button("完了"){
            vm.memos[0]["memoTitle"] = newJournalTitle  
            vm.memos[0]["memoText"] = newJournalText
            self.presentationMode.wrappedValue.dismiss()
        }.padding())
                            
        .confirmationDialog("Add Photo", isPresented: $isShowDialogue) {
            Button("Take a Photo"){
                
            }
            Button("Choose Photo from Library"){
                
            }
        }
        .onAppear() {

            DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                foucsedField = .title
                                }
                            }
    }
                            
    
}

#Preview {
    NewJournalView(vm: MemoModel())
}
