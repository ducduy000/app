import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:untitled2/firebase_options.dart';
import 'package:untitled2/loginscreen/home_page.dart';
import 'package:untitled2/respository/authentication_respository/authentication_respository.dart';
import 'package:untitled2/welcomescreen/welcome_screen.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRespository()));
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

//void main() => runApp(GetMaterialApp(
//debugShowCheckedModeBanner: false,
//home: WelcomeScreen(),
//));
