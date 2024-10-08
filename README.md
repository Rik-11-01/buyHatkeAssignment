# Task Manager

## Project Overview

The Task Manager is a SwiftUI application designed for managing tasks effectively. It allows users to create, read, update, and delete tasks, providing a simple interface to keep track of daily responsibilities. Users can set priorities, due dates, and completion statuses for each task. The application also features a dark/light mode toggle for better user experience and visual comfort.

## ScreenShots
<img width="328" alt="Screenshot 2024-10-08 at 11 42 07 PM" src="https://github.com/user-attachments/assets/09a68e00-7c56-41d4-8e02-ed6f8ad591fe">
<img width="328" alt="Screenshot 2024-10-08 at 11 42 15 PM" src="https://github.com/user-attachments/assets/d4b869cf-c834-4676-8519-20e6d092898b">
<img width="328" alt="Screenshot 2024-10-08 at 11 42 21 PM" src="https://github.com/user-attachments/assets/6697db36-bb6a-40d5-a379-552dc720653c">

<img width="328" alt="Screenshot 2024-10-08 at 11 42 25 PM" src="https://github.com/user-attachments/assets/31c27771-5d1f-4346-ba6e-b361528e93db">
<img width="328" alt="Screenshot 2024-10-08 at 11 42 32 PM" src="https://github.com/user-attachments/assets/c2c7cf3e-b9b4-4613-9de4-10f2ecc0fa9f">
<img width="328" alt="Screenshot 2024-10-08 at 11 43 02 PM" src="https://github.com/user-attachments/assets/80e0f56b-150b-4ad2-abb8-c6e27394e3de">
<img width="328" alt="Screenshot 2024-10-08 at 11 43 09 PM" src="https://github.com/user-attachments/assets/72593b62-c2bd-4cc9-8300-0bac30a6ad33">
<img width="328" alt="Screenshot 2024-10-08 at 11 43 18 PM" src="https://github.com/user-attachments/assets/40c3900f-934c-4259-a81c-c50f05ad11db">



## Features

- **Task Management**: Users can create, update, delete, and view tasks.
- **Priority Levels**: Tasks can be categorized by priority (Low, Medium, High).
- **Due Dates**: Users can assign due dates to tasks.
- **Completion Status**: Mark tasks as completed, moving them to a separate completed tasks list.
- **Data Persistence**: Task data is stored in a local database, allowing data to persist between app launches.
- **Dark/Light Mode Toggle**: Users can switch between dark and light themes based on their preferences.
- **Swipe to Delete**: Users can easily delete tasks by swiping.

## Setup Instructions

To set up the Task Manager project locally, follow these steps:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/task-manager.git](https://github.com/Rik-11-01/buyHatkeAssignment.git
2. Navigate to the Project Directory:
   Navigate to the Project Directory:
   ```bash
    cd task-manager
3. Open the Project in Xcode:
    ```bash
    open Task_Manager.xcodeproj

Install Dependencies: If your project uses any dependencies (e.g., via Swift Package Manager), ensure you install them according to the respective setup instructions.

Run the App:

      Select a simulator or a connected device.
      Click the "Run" button in Xcode or use Cmd + R.
      Run Unit Tests (Optional): To ensure all functionalities are working as expected, run the unit tests:  
      Cmd + U

## Key Design Decisions
- Architecture
The application follows the MVVM (Model-View-ViewModel) pattern, which promotes a clear separation of concerns, making it easier to manage and test.

- State Management
SwiftUI’s state management is leveraged using @State, @Binding, and @ObservedObject, ensuring the UI updates automatically with any changes in data.

- Data Persistence
Tasks are stored in a local database using Core Data, providing a robust solution for data persistence that enables seamless access to task information.

- User Experience
The app features a bottom navigation bar for easy navigation between active tasks, completed tasks, and settings. The design prioritizes user-friendliness, ensuring intuitive interactions.

- Accessibility
Consideration has been given to accessibility features, including adequate color contrast and support for VoiceOver, making the app usable for a diverse audience.

- Conclusion
The Task Manager app is a comprehensive tool for task management, aimed at helping users stay organized and productive. Feedback and contributions are welcome!

- License
This project is licensed under the MIT License. See the LICENSE file for more details.

This `README.md` should provide a clear and comprehensive overview of your project for users and contributors!
