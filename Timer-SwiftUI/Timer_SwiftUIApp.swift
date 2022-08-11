//
//  Timer_SwiftUIApp.swift
//  Timer-SwiftUI
//
//  Created by Sophia Gorgonio on 8/11/22.
//

import SwiftUI

@main
struct Timer_SwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
