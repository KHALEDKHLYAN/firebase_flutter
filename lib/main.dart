import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_flutter/firebase_options.dart';
import 'package:firebase_flutter/src/respository/authentication_respository/authentication_respository.dart';
import 'package:firebase_flutter/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'src/features/authentication/screens/welcome/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Wait for Firebase initialization
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Register AuthenticationRepository with GetX
  Get.put(AuthenticationRepository());

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: Duration(microseconds: 500),
      home: WelcomeScreen(),
    );
  }
}
