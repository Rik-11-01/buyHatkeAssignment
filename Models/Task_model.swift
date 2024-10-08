//
//  Task_model.swift
//  Task_Manager
//
//  Created by Ritik Raman on 08/10/24.
//

import Foundation

struct Task: Identifiable, Codable {
    var id = UUID()
    var title: String
    var description: String
    var dueDate: Date
    var priority: Priority
    var isCompleted: Bool
}

enum Priority: String, Codable, CaseIterable {
    case low = "Low"
    case medium = "Medium"
    case high = "High"
}

var dummyTask = Task(
    title: "Finish SwiftUI Project",
    description: "Complete the task management app with CRUD functionality, data persistence, and dark/light mode.",
    dueDate: Date(),
    priority: .high,
    isCompleted: false
)
