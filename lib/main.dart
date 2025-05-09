import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:harmony_hush/main_page.dart';
import 'package:harmony_hush/onboard_screen.dart';
import 'package:harmony_hush/practice.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final options = FirebaseOptions(
    apiKey: "AIzaSyBnfLWPL1KBOfBV5BpVFi31qWYYnxh504k",
    appId: "com.example.harmony_hush",
    messagingSenderId: "your-messaging-sender-id",
    projectId: "harmonyhush-3f558",
  );
  await Firebase.initializeApp(options: options);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
