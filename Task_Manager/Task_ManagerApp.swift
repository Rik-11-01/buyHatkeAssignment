//
//  Task_ManagerApp.swift
//  Task_Manager
//
//  Created by Ritik Raman on 08/10/24.
//

import SwiftUI

@main
struct Task_ManagerApp: App {
    @AppStorage("isDarkMode") private var isDarkMode = true

    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
