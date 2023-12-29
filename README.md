# Flutter Android Native Work Orders Details List App

This Flutter Android application efficiently retrieves and displays work order details on mobile devices, providing a user-friendly interface for accessing work order information.

## Features

- **Display Work Order Details:**
    - Project ID
    - Work Order
    - Area
    - Scheduled Date
    - State
## Screenshots

![Screenshot Splash Screen](https://github.com/Flutter-AsadALi/work_order_app_flutter/blob/main/assets/images/splsh.jpeg)
![Screenshot List of Work Order](https://github.com/Flutter-AsadALi/work_order_app_flutter/blob/main/assets/images/list.jpeg)
![Screenshot Work Order Details View](https://github.com/Flutter-AsadALi/work_order_app_flutter/blob/main/assets/images/details.jpeg)

## Video
![Video Demo](https://github.com/Flutter-AsadALi/work_order_app_flutter/blob/main/assets/images/video.mp4)

## Requirements

- Flutter version greater than 3.10
- Java SDK

## Installation

1. Clone the repository:
   git clone https://github.com/Flutter-AsadALi/work_order_app_flutter_native
2. Open the project in Android Studio.
3. Run the command: `flutter pub get`.
4. Execute `flutter run` and select the desired device.

## Usage

1. Launch the app to access the list of work orders.
2. Tap on a card to view detailed information.

## Technologies Used

- **Language:** Flutter, Dart, Java/Kotlin
- **Data Retrieval:** RESTful APIs, JSON parsing
- **Storage:** Local SharedPreferences for caching
- **Components:** ListView.separated, GetX, etc.

## Implementation Considerations

- **Native API Calling:** Utilizes Android native API calls to fetch data, enhancing performance and optimizing data retrieval. The UI and state management are seamlessly handled in Flutter, leveraging the MVC (Model-View-Controller) model for efficient data flow and rendering.

- **Scalability:** The app ensures scalability by employing pagination or lazy loading mechanisms, allowing the retrieval of large volumes of work orders in batches. This approach maintains app performance and responsiveness, even with extensive data sets.

- **Error Handling:** A robust error handling system is integrated to proficiently manage various scenarios, including network disruptions, server-side issues, or data inconsistencies. Clear and user-friendly error messages are displayed, facilitating better comprehension and user experience.
- 
- **Offline Handling:** The app can function without an internet connection. However, to access the work order list, the app needs initial data retrieval, allowing it to store essential information locally. Once fetched, this data enables the app to operate offline, providing access without an internet connection.


## App Design Decisions

- **UI/UX Design:** The design focuses on intuitive navigation, minimalist UI elements, and responsiveness across various screen sizes and orientations.

- **Architecture:** The app follows a clean architecture pattern, separating concerns and promoting maintainability and scalability.

- **Third-party Libraries:** Notable third-party libraries like Dio for network requests and GetX for state management are used, enhancing the app's functionality and performance.

## Performance Considerations

- **Optimization:** Data caching, minimal network calls, and efficient rendering techniques are employed to optimize performance and reduce app loading times.




