//
//  AddTaskView.swift
//  Task_Manager
//
//  Created by Ritik Raman on 08/10/24.
//

import SwiftUI

struct AddTaskView: View {
    @ObservedObject var viewModel: TaskViewModel
    
    @State private var title = ""
    @State private var description = ""
    @State private var dueDate = Date()
    @State private var priority: Priority = .medium
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Task Info")) {
                    TextField("Title", text: $title)
                    TextField("Description", text: $description)
                }
                
                Section(header: Text("Details")) {
                    DatePicker("Due Date", selection: $dueDate, displayedComponents: .date)
                    Picker("Priority", selection: $priority) {
                        ForEach(Priority.allCases, id: \.self) { priority in
                            Text(priority.rawValue)
                        }
                    }
                }
                
                Button("Save") {
                    viewModel.addTask(title: title, description: description, dueDate: dueDate, priority: priority)
                    dismiss()
                }
            }
            .navigationTitle("New Task")
        }
    }
}

#Preview {
    AddTaskView(viewModel: TaskViewModel())
}
