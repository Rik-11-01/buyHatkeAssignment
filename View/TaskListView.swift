//
//  TaskListView.swift
//  Task_Manager
//
//  Created by Ritik Raman on 08/10/24.
//

import SwiftUI

struct TaskListView: View {
    @ObservedObject var viewModel: TaskViewModel
    @State private var showAddTaskView = false
    @State private var taskToEdit: Task?
    var body: some View {
        NavigationView {
                  List {
                      ForEach(viewModel.tasks.filter { !$0.isCompleted }) { task in
                          Button(action: {
                              taskToEdit = task
                          }) {
                              TaskRowView(task: task, viewModel: viewModel)
                          }
                          .sheet(item: $taskToEdit) { task in 
                              if let index = viewModel.tasks.firstIndex(where: { $0.id == task.id }) {
                                    TaskEditingView(viewModel: viewModel, task: $viewModel.tasks[index])
                               }
                          }
                      }
                  }
                  .navigationTitle("Tasks")
                  .toolbar {
                      ToolbarItem(placement: .navigationBarTrailing) {
                          Button(action: {
                              showAddTaskView.toggle()
                          }) {
                              Image(systemName: "plus")
                          }
                      }
                  }
                  .sheet(isPresented: $showAddTaskView) {
                      AddTaskView(viewModel: viewModel)
                  }
              }
          }
}
#Preview {
    TaskListView(viewModel: TaskViewModel())
}
