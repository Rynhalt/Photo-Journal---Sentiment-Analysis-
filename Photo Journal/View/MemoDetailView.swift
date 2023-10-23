//
//  MemoDetailk.swift
//  Photo Journal
//
//  Created by Marcus Chang on 2023/10/22.
//

import SwiftUI

struct MemoDetailView: View {

    // 引数としてMemoLisetViewから要素を受け取る
    var memo: [String:String]
    @StateObject var vm: MemoModel

    var body: some View {

        VStack(alignment: .leading) {
            HStack {
                Text(memo["memoTitle"] ?? "")
                    .font(.largeTitle)
                    .fontWeight(.thin)
                Spacer()
                Text(memo["memoTime"] ?? "")
            }
            .padding(.bottom, 20)
            Text(memo["memoText"] ?? "")
            
            Spacer()
        }
        .padding(.all, 20)
        .navigationBarTitle(Text("詳細"),
                            displayMode: .inline)

    }
}
