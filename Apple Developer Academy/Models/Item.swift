//
//  Item.swift
//  Apple Developer Academy
//
//  Created by Alistair Albus Pines de Montmollin on 2025-01-30.
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
