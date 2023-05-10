import 'package:appia/dominio/usecases/google.dart';
import 'package:appia/tests/prueba.dart';
import 'package:appia/tests/prueba2.dart';
import 'package:appia/presentacion/screens/body_boarding.dart';
import 'package:appia/tests/test.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'dominio/usecases/notifications.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  NotificationService().initNotification();
  final fcmToken = await FirebaseMessaging.instance.getToken();
  print(fcmToken);
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.dark,
        ),
        home: const BodyBoarding(),
      ));
}
