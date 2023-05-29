import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'features/presentation/pages/onbordingrscreen/onbordingrscreen_screens.dart';
import 'features/presentation/pages/push_massage.dart';
import 'features/presentation/pages/tracket_screen/tracker_screens.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: OnbordingrScreen(),
    );
  }
}
