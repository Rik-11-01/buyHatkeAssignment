//
//  TaskEditingView.swift
//  Task_Manager
//
//  Created by Ritik Raman on 08/10/24.
//

import SwiftUI

struct TaskEditingView: View {
        @ObservedObject var viewModel: TaskViewModel
        @Binding var task: Task
        @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView {
                  Form {
                      Section(header: Text("Task Info")) {
                          TextField("Title", text: $task.title)
                          TextField("Description", text: $task.description)
                      }
                      
                      Section(header: Text("Details")) {
                          DatePicker("Due Date", selection: $task.dueDate, displayedComponents: .date)
                          Picker("Priority", selection: $task.priority) {
                              ForEach(Priority.allCases, id: \.self) { priority in
                                  Text(priority.rawValue)
                              }
                          }
                      }
                      
                      Button("Save") {
                          viewModel.updateTask(updatedTask: task)
                          dismiss()
                      }
                  }
                  .navigationTitle("Edit Task")
              }
    }
}

#Preview {
    TaskEditingView(viewModel: TaskViewModel(), task: Binding<Task>(
        get: { dummyTask },
        set: { dummyTask = $0 }
    ))
}
