//
//  AirSimIOSApp.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/11/5.
//

import SwiftUI
import PartialSheet

@main
struct AirSimIOSApp: App {
    let persistenceController = PersistenceController.shared
    
    let sheetManager: PartialSheetManager = PartialSheetManager()
    let contentView = ContentView()

    var body: some Scene {
        WindowGroup {
            contentView
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(sheetManager)
        }
    }
}
