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

## 📁 Project Structure

![image](https://github.com/user-attachments/assets/b41b2973-b0e9-42be-8319-003254f5dca5)
![image](https://github.com/user-attachments/assets/87e27b73-6533-4d7f-96b8-142e17ed8a98)

### 📝 License
This project is licensed under the MIT License. See the LICENSE file for details.
