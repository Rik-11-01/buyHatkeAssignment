//
//  Task_ViewModel.swift
//  Task_Manager
//
//  Created by Ritik Raman on 08/10/24.
//

import Foundation
import SwiftUI

class TaskViewModel: ObservableObject {
    @Published var tasks: [Task] = []
    
    init() {
        loadTasks()
    }
    
    func addTask(title: String, description: String, dueDate: Date, priority: Priority) {
        let newTask = Task(title: title, description: description, dueDate: dueDate, priority: priority, isCompleted: false)
        tasks.append(newTask)
        saveTasks()
    }
    
    func addTask(_ task: Task) {
           tasks.append(task)
    }
    
    func updateTask(updatedTask: Task) {
        if let index = tasks.firstIndex(where: { $0.id == updatedTask.id }) {
            tasks[index] = updatedTask
            saveTasks()
        }
    }
    
    func deleteTask(task: Task) {
        tasks.removeAll { $0.id == task.id }
    }
    
    func deleteAllTask() {
        tasks.removeAll()
    }
    
    func toggleTaskCompletion(task: Task) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index].isCompleted.toggle()
            saveTasks()
        }
    }

    // Data Persistence
    func saveTasks() {
        if let encoded = try? JSONEncoder().encode(tasks) {
            UserDefaults.standard.set(encoded, forKey: "tasks")
        }
    }
    
    func loadTasks() {
        if let data = UserDefaults.standard.data(forKey: "tasks"),
           let decoded = try? JSONDecoder().decode([Task].self, from: data) {
            tasks = decoded
        }
    }
}
