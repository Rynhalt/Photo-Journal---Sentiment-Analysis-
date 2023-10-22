//
//  ContentView.swift
//  Photo Journal
//
//  Created by Marcus Chang on 2023/10/20.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State var inputText = ""
    @State var isShowArchiveView = false
    @State var isShowGuideView = false
    @State private var isActive = false
    var newMemo = ["memoTitle": "", "memoTime": "", "memoText": ""]
    @StateObject var vm: MemoModel


    var body: some View {
        NavigationStack{
            VStack(spacing: 20) {
                
                Spacer()
                    
                NavigationLink(destination: NewJournalView()) {
                    Text("Start Journaling")
                }.onTapGesture {
                    vm.memos.insert(newMemo, at: 0)
                }
                         
                Spacer()
                NavigationLink {
                    ArchiveView(vm: MemoModel())
                } label: {
                    Text("Look at Past Journals")
                }
                Spacer()
                Button("What is this app?"){
                    isShowGuideView = true
                }
                .sheet(isPresented: $isShowGuideView){
                    GuideView()
                }
                Spacer()
                

                   
            }
            
            
            .padding()
            .navigationTitle("Home")
        }
        
                    }
    }


#Preview {
    ContentView(vm: MemoModel())
        .modelContainer(for: Item.self, inMemory: true)
}
