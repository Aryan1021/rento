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
- git clone https://github.com/your-username/rento.git
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

lib/
├── data/
│ ├── datasources/
│ │ └── firebase_car_data_source.dart
│ ├── models/
│ │ └── car.dart
│ └── repositories/
│ └── car_repository_impl.dart
├── domain/
│ ├── repositories/
│ │ └── car_repository.dart
│ └── usecases/
│ └── get_cars.dart
├── presentation/
│ ├── bloc/
│ │ ├── car_bloc.dart
│ │ ├── car_event.dart
│ │ └── car_state.dart
│ ├── pages/
│ │ ├── car_details_page.dart
│ │ ├── car_list_screen.dart
│ │ ├── MapsDetailsPage.dart
│ │ └── onboarding_page.dart
│ └── widgets/
│ ├── car_card.dart
│ └── more_card.dart
├── firebase_options.dart
├── injection_container.dart
└── main.dart

### 📝 License
This project is licensed under the MIT License. See the LICENSE file for details.
