//
//  Message.swift
//  ChatDemoApp
//
//  Created by Jonathan Tri Christianto on 17/05/22.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timeStamp: Date
}
