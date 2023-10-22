//
//  SecondView.swift
//  Photo Journal
//
//  Created by Marcus Chang on 2023/10/21.
//

import SwiftUI

struct ArchiveView: View {
    @State var isShowAlert = false
    func delete (offsets: IndexSet) {
        memos.remove(atOffsets: offsets)
    }
    func move(offsets: IndexSet, index: Int) {
            memos.move(fromOffsets: offsets, toOffset: index)
        }
    @State private var memos = [
                                ["title1", "10:01","This is a sample"],
                                ["title2", "10:01","This is a sample"],
                                ["title3", "10:01","This is a sample"],
                                ["title4", "10:01","This is a sample"],
                                ["title5", "10:01","This is a sample"],]
    var body: some View {
        ZStack{
            Color.white
                .ignoresSafeArea()
            VStack{
                Spacer()
                Text("Your journey so far...")
                Spacer()
                NavigationView {
                    List {
                        ForEach(memos, id:\.self) { memo in
                            NavigationLink(destination: MemoDetailView(memo: memo)) { 
                                MemoRowView(memo: memo)
                            }
                            
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                    }
                    
                    .navigationBarItems(trailing: EditButton())
                    .navigationTitle("Journals")
                }
                Button("Delete notes") {
                    isShowAlert = true
                }
                Spacer()
            }
            
            
        }
        .alert("Do you really want to delete it?", isPresented: $isShowAlert) {
            Button("Yes", role: .destructive) {
            }
            Button("Nevermind", role: .cancel) {}
        }
        
        
    }
    
}
struct MemoRowView: View {
    
    var memo: [String]
    
    var body: some View {
        
        HStack {
            Text(memo[0])
            Spacer()
            Text(memo[1])
        }
        .padding(.horizontal, 20.0)
    }
}

#Preview {

    ArchiveView()
}


