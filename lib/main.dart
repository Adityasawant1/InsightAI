import 'package:avalon/firebase_options.dart';
import 'package:avalon/pages/authentification/auth_page.dart';
import 'package:avalon/pages/loginpage/signup_page.dart';
//import 'package:avalon/pages/authentification/auth_page.dart';
//import 'package:avalon/pages/loginpage/verify_otp.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avalon ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const SignUpPage(),
    );
  }
}
