//
//  Item.swift
//  LibraryOfBabel
//
//  Created by Вавилов Илья on 12/2/26.
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
