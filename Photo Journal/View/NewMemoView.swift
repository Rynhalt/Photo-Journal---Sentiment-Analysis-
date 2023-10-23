//
//  NewMemoView.swift
//  Photo Journal
//
//  Created by Marcus Chang on 2023/10/22.
//

import SwiftUI

struct NewMemoView: View {

    // フォーカスが当たるTextFieldを判断するためのenum
    enum Field { case title }

    @FocusState private var foucsedField: Field?

    @State var newMemoTitle = ""
    @State var newMemoText = ""
    
    @EnvironmentObject var vm: MemoModel

    // Home画面に戻るためのプロパティ
    @Environment(\.presentationMode) private var presentationMode

    var body: some View {

        VStack {
            // メモのタイトルを記入するテキストボックス
            TextField("タイトル", text: $newMemoTitle)
                .padding(20)
                .frame(width: 400, height: 50)
                .font(.title)
                .focused($foucsedField, equals: .title)

            // メモ詳細を記入するテキストボックス
            TextEditor(text: $newMemoText)
                .padding(.horizontal)

        } // VStack
        .navigationBarTitle(Text(""),
                            displayMode: .inline)
        .navigationBarItems(trailing: Button("完了") {
            
            vm.memos[0]["memoTitle"] = newMemoTitle  // ✅ ①
            vm.memos[0]["memoText"] = newMemoText

            self.presentationMode.wrappedValue.dismiss()

        }.padding())

        // .onApperはView表示時に発生する処理のこと
        // NewMemoViewへの遷移から、0.5秒ずらしてenumの値を更新し、キーボード表示の処理を行う
        .onAppear() {

            DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                foucsedField = .title
            }
        }

    } // body
} // View

#Preview {
    NewMemoView()
}
