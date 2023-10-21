//
//  Item.swift
//  Photo Journal
//
//  Created by Marcus Chang on 2023/10/20.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
