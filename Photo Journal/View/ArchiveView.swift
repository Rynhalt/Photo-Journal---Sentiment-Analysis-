//
//  SecondView.swift
//  Photo Journal
//
//  Created by Marcus Chang on 2023/10/21.
//

import SwiftUI



struct ArchiveView: View {
    @State var isShowAlert = false
    @StateObject var vm: MemoModel
    func delete (offsets: IndexSet) {
        vm.memos.remove(atOffsets: offsets)
    }
    func move(offsets: IndexSet, index: Int) {
        vm.memos.move(fromOffsets: offsets, toOffset: index)
        }
    var body: some View {
        ZStack{
            Color.white
                .ignoresSafeArea()
            VStack{
                Spacer()
                NavigationView {
                    VStack{
                        
                        List {
                            ForEach(0 ..< vm.memos.count, id:\.self) { index in
                                
                                NavigationLink(destination: MemoDetailView(memo: vm.memos[index])) {
                                    MemoRowView(memo: vm.memos[index])
                                }
                                
                            }
                            .onDelete(perform: delete)
                            .onMove(perform: move)
                        }
                    }
                    
                    .navigationBarItems(trailing: EditButton())
                    .navigationTitle("Your journey so far...")
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
    
    var memo: [String: String]
    
    var body: some View {
        
        HStack {
            Text(memo["memoTitle"] ?? "")
            Spacer()
            Text(memo["memoTime"] ?? "")
        }
        .padding(.horizontal, 20.0)
    }
}

#Preview {

    ArchiveView(vm: MemoModel())
}


