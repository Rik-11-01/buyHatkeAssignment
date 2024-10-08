//
//  TaskRowView.swift
//  Task_Manager
//
//  Created by Ritik Raman on 08/10/24.
//

import SwiftUI

struct TaskRowView: View {
      var task: Task
      @ObservedObject var viewModel: TaskViewModel
      
      var body: some View {
          HStack {
              VStack(alignment: .leading) {
                  Text(task.title)
                      .font(.headline)
                  Text("Due: \(task.dueDate, formatter: dateFormatter)")
                      .font(.caption)
                  Text("Priority: \(task.priority.rawValue)")
                      .font(.caption)
              }
              
              Spacer()
              
              Button(action: {
                  viewModel.toggleTaskCompletion(task: task)
              }) {
                  Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
              }
          }
          .padding()
      }
  }


private let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    return formatter
}()

#Preview {
    TaskRowView(task:dummyTask, viewModel: TaskViewModel() )
}
