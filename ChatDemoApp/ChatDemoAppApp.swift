//
//  ChatDemoAppApp.swift
//  ChatDemoApp
//
//  Created by Jonathan Tri Christianto on 17/05/22.
//

import SwiftUI
import Firebase

@main
struct ChatDemoAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
