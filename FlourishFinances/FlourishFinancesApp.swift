//
//  FlourishFinancesApp.swift
//  FlourishFinances
//
//  Created by Scholar on 6/9/25.
//

import SwiftUI
import SwiftData
@main
struct FlourishFinancesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: SubItem.self)
        }
    }
}
