//
//  CompletedTaskView.swift
//  Task_Manager
//
//  Created by Ritik Raman on 08/10/24.
//

import SwiftUI

struct CompletedTaskView: View {
    @ObservedObject var viewModel: TaskViewModel
    var body: some View {
        NavigationView {
                   List {
                       ForEach(viewModel.tasks.filter { $0.isCompleted }) { task in
                           TaskRowView(task: task, viewModel: viewModel)
                       }
                       .onDelete(perform: deleteTask)
                   }
                   .navigationTitle("Completed Tasks")
               }
    }
    private func deleteTask(at offsets: IndexSet) {
            for index in offsets {
                let task = viewModel.tasks.filter { $0.isCompleted }[index]
                viewModel.deleteTask(task: task)  
            }
        }
}

#Preview {
    CompletedTaskView(viewModel: TaskViewModel())
}
