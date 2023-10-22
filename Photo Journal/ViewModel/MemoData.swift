//
//  SwiftUIView.swift
//  Photo Journal
//
//  Created by Marcus Chang on 2023/10/21.
//

import SwiftUI


class MemoModel: ObservableObject {
   
    @Published var memos = [ ["title1", "10:01","This is a sample"],
                             ["title2", "10:01","This is a sample"],
                             ["title3", "10:01","This is a sample"],
                             ["title4", "10:01","This is a sample"],
                             ["title5", "10:01","This is a sample"],]

}
