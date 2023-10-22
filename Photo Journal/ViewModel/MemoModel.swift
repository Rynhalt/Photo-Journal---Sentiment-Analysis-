//
//  SwiftUIView.swift
//  Photo Journal
//
//  Created by Marcus Chang on 2023/10/21.
//

import SwiftUI


class MemoModel: ObservableObject {
   
    @Published var memos
    = [["memoTitle": "プログラミングで起きたエラー", "memoTime": "10:01", "memoText":"にんじんの美味しい料理の仕方を調べる。"],
                                ["memoTitle": "Swift勉強", "memoTime": "17:11", "memoText": "SwiftUIでメモアプリ作成"],
                                ["memoTitle": "誕生日プレゼント",  "memoTime": "16:34", "memoText": "どこそこデパートにプレゼントを買いに行く"]]


}
