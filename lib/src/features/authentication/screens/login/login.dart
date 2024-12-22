// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:firebase_flutter/src/features/authentication/screens/login/widgets/login_form.dart';
import 'package:firebase_flutter/src/features/authentication/screens/login/widgets/login_title_widget.dart';
import 'package:flutter/material.dart';
import '../../../../constants/image_string.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

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
                Column(
                  children: [
                    Text("OR"),
                    SizedBox(height: formHeight - 20),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        icon: Image.asset(
                          googleLogo,
                          width: 20,
                        ),
                        onPressed: () {},
                        label: Text(signinWithGoogle),
                      ),
                    ),
                    SizedBox(height: formHeight - 20),
                    TextButton(
                        onPressed: () {},
                        child: Text.rich(
                          TextSpan(
                            text: dontHaveAnAccount,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text: signupText,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
