// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:firebase_flutter/src/features/authentication/screens/signup/widgets/sign_up_form.dart';
import 'package:firebase_flutter/src/features/authentication/screens/signup/widgets/signup_footer.dart';
import 'package:flutter/material.dart';
import '../../../../common_widgets/form/form_header_widgets.dart';
import '../../../../constants/image_string.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(defaultSizes),
        child: Column(
          children: [
            FormHeaderWidgets(
                image: splashImage,
                title: signUpTittle,
                subTitle: signUpSubTittle),
            SignupFormWidget(),
            SignupFooter(),
          ],
        ),
      ),
    )));
  }
}
