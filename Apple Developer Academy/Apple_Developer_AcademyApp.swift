//
//  Apple_Developer_AcademyApp.swift
//  Apple Developer Academy
//
//  Created by Alistair Albus Pines de Montmollin on 2025-01-30.
//

import SwiftUI
import SwiftData

@main
struct Apple_Developer_AcademyApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
