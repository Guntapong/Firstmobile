import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:mobile_ced/index.dart';
import 'package:mobile_ced/screen/Location.dart';
import 'package:mobile_ced/screen/dashboard.dart';
import 'package:mobile_ced/screen/firebaselogin.dart';
import 'package:mobile_ced/screen/firebaseregister.dart';
import 'package:mobile_ced/screen/register.dart';
import 'package:mobile_ced/screen/store.dart';
import 'package:mobile_ced/screen/video.dart';
import 'package:mobile_ced/screen/image.dart';

import 'config/constant.dart';
import 'screen/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KMUTNB',
      theme: ThemeData(
        primaryColor: pColor,
        secondaryHeaderColor: sColor,
      ),
      routes: {
        'login': (context) => FirebaseLogin(),
        'register': (context) => FirbaseRegister(),
        'dashboard': (context) => Dashboard(),
        'video': (context) => Video(),
        'image': (context) => Images(),
        'location': (context) => Location(),
        'store': (context) => Store(),
      },
      home: Index(),
    );
  }
}
