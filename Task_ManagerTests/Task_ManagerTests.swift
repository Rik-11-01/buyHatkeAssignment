//
//  Task_ManagerTests.swift
//  Task_ManagerTests
//
//  Created by Ritik Raman on 08/10/24.
//

import XCTest
@testable import Task_Manager

final class Task_ManagerTests: XCTestCase {
    
    var viewModel = TaskViewModel()

    override func setUpWithError() throws {
        // Initialize the view model before each test
        viewModel = TaskViewModel()
    }

    override func tearDownWithError() throws {
        // Reinitialize the view model after each test
        viewModel = TaskViewModel() // Reinitializing instead of setting it to nil
    }

    func testAddTask() throws {
        // Given
        let initialCount = viewModel.tasks.count
        let newTask = Task(id: UUID(), title: "New Task", description: "Task Description", dueDate: Date(), priority: .medium, isCompleted: false)
        
        // When
        viewModel.addTask(newTask)

        // Then
        XCTAssertEqual(viewModel.tasks.count, initialCount + 1)
    }
    
    func testDeleteTask() throws {
        // Given
        let initialCount = viewModel.tasks.count
        let taskToDelete = Task(id: UUID(), title: "Task to Delete", description: "Description", dueDate: Date(), priority: .medium, isCompleted: false)
        viewModel.addTask(taskToDelete)

        // When
        viewModel.deleteTask(task: taskToDelete)

        // Then
        XCTAssertEqual(viewModel.tasks.count, initialCount)
    }
    
    func testUpdateTask() throws {
        // Given
        let initialTask = Task(id: UUID(), title: "Initial Task", description: "Description", dueDate: Date(), priority: .medium, isCompleted: false)
        viewModel.addTask(initialTask)

        // When
        var updatedTask = viewModel.tasks.first!
        updatedTask.title = "Updated Task"
        viewModel.updateTask(updatedTask: updatedTask)

        // Then
        XCTAssertEqual(viewModel.tasks.first?.title, "Updated Task")
    }
    
    func testReadNewTasks() throws {
        viewModel.deleteAllTask()
        // Given
        let task1 = Task(id: UUID(), title: "Task 1", description: "Description 1", dueDate: Date(), priority: .high, isCompleted: false)
        let task2 = Task(id: UUID(), title: "Task 2", description: "Description 2", dueDate: Date(), priority: .medium, isCompleted: false)
        
        // Add tasks to the view model
        viewModel.addTask(task1)
        viewModel.addTask(task2)

        // When
        let tasks = viewModel.tasks // Reading tasks from the view model

        // Then
        XCTAssertEqual(tasks.count, 2) // Check if the number of tasks is correct
        XCTAssertEqual(tasks[0].title, task1.title) // Check if the first task matches
        XCTAssertEqual(tasks[1].title, task2.title) // Check if the second task matches
    }
}
