//
//  ContentView.swift
//  Task_Manager
//
//  Created by Ritik Raman on 08/10/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = TaskViewModel()
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            TaskListView(viewModel: viewModel)
                .tabItem {
                    Label("Tasks", systemImage: "list.bullet")
                }
                .tag(0)
            
            CompletedTaskView(viewModel: viewModel)
                .tabItem {
                    Label("Completed", systemImage: "checkmark.circle")
                }
                .tag(1)
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
                .tag(2)
        }
    }
}

#Preview {
    ContentView()
}
