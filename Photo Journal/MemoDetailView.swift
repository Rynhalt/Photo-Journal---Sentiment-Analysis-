//
//  MemoDetailView.swift
//  Photo Journal
//
//  Created by Marcus Chang on 2023/10/21.
//

import SwiftUI

struct MemoDetailView: View {

    var memo: [String]

    var body: some View {

        VStack(alignment: .leading) {
            HStack {
                Text(memo[0])
                    .font(.largeTitle)
                    .fontWeight(.thin)
                Spacer()
                Text(memo[1])
            }
            .padding(.bottom, 20)
            Text(memo[2])

            Spacer()
        }
        .padding(.all, 20)
        .navigationBarTitle(Text("Details"),
                            displayMode: .inline)

    }
}

#Preview {
    MemoDetailView(memo: ["I want to be strong like Roman empire"])
}
