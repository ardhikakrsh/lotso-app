import 'package:firebase_core/firebase_core.dart';
import 'package:lotsoApp/firebase_options.dart';
import 'package:lotsoApp/view/pages/splash_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Lotso App',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
