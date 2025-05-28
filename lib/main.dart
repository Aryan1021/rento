import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rento/firebase_options.dart';
import 'package:rento/injection_container.dart';
import 'package:rento/presentation/bloc/car_bloc.dart';
import 'package:rento/presentation/bloc/car_event.dart';
import 'package:rento/presentation/pages/MapsDetailsPage.dart';
import 'package:rento/presentation/pages/car_details_page.dart';
import 'package:rento/presentation/pages/car_list_screen.dart';
import 'package:rento/presentation/pages/onboarding_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load the .env file
  await dotenv.load(fileName: ".env");

  // Initialize Firebase with generated options
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // 🛠 Disable Firestore persistence to avoid cached stale data
  FirebaseFirestore.instance.settings = const Settings(persistenceEnabled: false);

  // Initialize DI container
  initInjection();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CarBloc>()..add(LoadCars()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: OnboardingPage(),
      ),
    );
  }
}