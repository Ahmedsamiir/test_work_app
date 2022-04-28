import 'package:flutter/material.dart';
import 'package:testwork/screens/first_screen.dart';
import 'package:testwork/screens/second_screen.dart';
import 'package:testwork/screens/third_screen.dart';
import 'package:testwork/shared/styles/theme.dart';

void main() {

  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home:  ThirdScreen(),
    );
  }
}

