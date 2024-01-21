import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:twinspiders_task/screens/home_screen.dart';
import 'package:twinspiders_task/screens/signin_screen.dart';

Future<void> main() async{
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Twinspider Task',
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}