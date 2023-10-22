//
//  MemoDetailView.swift
//  Photo Journal
//
//  Created by Marcus Chang on 2023/10/21.
//

import SwiftUI

struct MemoDetailView: View {

    var memo: [String:String]

    var body: some View {

        VStack(alignment: .leading) {
            HStack {
                Text(memo["memoTitle"] ?? "")
                    .font(.largeTitle)
                    .fontWeight(.thin)
                Spacer()
                Text(memo["memoTme"] ?? "")
            }
            .padding(.bottom, 20)
            Text(memo["memoText"] ?? "")

            Spacer()
        }
        .padding(.all, 20)
        .navigationBarTitle(Text("Details"),
                            displayMode: .inline)

    }
}

#Preview {
    MemoDetailView(memo: ["memoTitle": "プログラミングで起きたエラー", "memoTime": "10:01", "memoText":"にんじんの美味しい料理の仕方を調べる。"])
}
