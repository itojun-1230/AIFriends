//
//  Item.swift
//  AIfriends
//
//  Created by 伊藤潤平 on 2025/01/19.
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
