//
//  SettingView.swift
//  Task_Manager
//
//  Created by Ritik Raman on 08/10/24.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("isDarkMode") var isDarkMode = false

    var body: some View {
        Form {
            Toggle("Dark Mode", isOn: $isDarkMode)
        }
        .onChange(of: isDarkMode) {
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                windowScene.windows.first?.overrideUserInterfaceStyle = isDarkMode ? .dark : .light
            }
        }
        .navigationTitle("Settings")
    }
}

#Preview {
    SettingsView()
}
