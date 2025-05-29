# 🚗 Rento

**Rento** is a modern and lightweight car rental mobile app built with **Flutter** and **Firebase**. It offers users the ability to explore a list of cars for rent, view detailed specs, and interact with clean, responsive UI components. Data is dynamically fetched from **Cloud Firestore** and managed efficiently using the **BLoC** architecture.

---

## 📱 Features

- 🔍 Realtime car listings from Firebase Firestore
- 📊 Detailed car information (model, distance, fuel capacity, price/hour)
- 🧠 Efficient state management using BLoC
- 🛡️ Safe data parsing with null/format handling
- 🌐 Smooth navigation across UI screens
- 💡 Firebase persistence disabled for fresh data every time
- 🧪 Structured project for easy testing and maintenance

---

## 🛠️ Tech Stack

| **Layer**           | **Tools/Libraries**                          |
|---------------------|----------------------------------------------|
| UI                  | Flutter, Material 3                          |
| Architecture        | BLoC + Clean Architecture                   |
| State Management    | flutter_bloc, Equatable                     |
| Async Operations    | Dart Futures, Streams                       |
| Dependency Injection| get_it                                      |
| Database            | Firebase Firestore                          |
| Configuration       | flutter_dotenv                              |
| Navigation          | Navigator 2.0                               |


---

## 🚀 Getting Started

### 1. Clone the Repository
- git clone https://github.com/Aryan1021/rento.git
- cd rento

### 2. Install Dependencies
- flutter pub get

### 3. Configure Firebase
- Set up your Firebase project via the FlutterFire CLI
- Download google-services.json for Android and GoogleService-Info.plist for iOS
- Add them to the appropriate directories
- Ensure firebase_options.dart is generated and used in main.dart

### 4. Add .env File
- Create a .env file at the root of your project with necessary variables:
- EXAMPLE_API_KEY=your_api_key

### 5. Run the App
- flutter run

---

## 📚 Lessons Learned
- Integrated Firebase Firestore effectively for real-time data storage and retrieval.
- Debugged Firestore type casting issues, especially with `double` and `int` parsing.
- Leveraged Flutter BLoC for structured state management.
- Understood importance of modular folder structure and clean architecture.
- Learned how to trace data flow from Firestore to UI components using `factory` constructors.
- Improved Flutter UI design with reusable widgets and responsive layout handling.
- Gained experience in maintaining scalable code for production-ready apps.

---

### 📝 License
This project is licensed under the MIT License. See the LICENSE file for details.
