// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/image_string.dart';
import '../../../../constants/sizes.dart';
import '../login/login.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(defaultSizes),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage(splashImage), height: height * 0.6),
                Text(
                  'Welcome to our app',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  'Deploy Your Chess Documents On Air',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Row(children: [
                  Expanded(
                      child: OutlinedButton(
                          onPressed: () => Get.to(() => Login()),
                          child: Text("Login"))),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("SignUp"))),
                ]),
              ])),
    );
  }
}
