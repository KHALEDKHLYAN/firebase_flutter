// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:firebase_flutter/src/features/authentication/screens/login/widgets/login_footer.dart';
import 'package:firebase_flutter/src/features/authentication/screens/login/widgets/login_form.dart';
import 'package:firebase_flutter/src/features/authentication/screens/login/widgets/login_title_widget.dart';
import 'package:flutter/material.dart';
import '../../../../constants/sizes.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(defaultSizes),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginTitleWidget(size: size),
                LoginForm(),
                LoginFooter()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
