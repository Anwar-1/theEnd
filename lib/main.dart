
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:projectfinal/create.dart';
//import 'package:projectfinal/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pojectfinal/login.dart';

import 'auth.dart';
import 'create.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Auth(),
    );
  }
}


/*
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pojectfinal/create.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "YOUR_API_KEY",
      authDomain: "YOUR_AUTH_DOMAIN",
      projectId: "YOUR_PROJECT_ID", appId: '', messagingSenderId: '',
      // Add more values here as needed (e.g., databaseURL, storageBucket, messagingSenderId, appId, etc.)
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: create(),
    );
  }
}
*/