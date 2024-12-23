// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:firebase_flutter/src/constants/sizes.dart';
import 'package:firebase_flutter/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common_widgets/form/form_header_widgets.dart';
import '../../../../../constants/image_string.dart';
import '../forget_password_otp/otp_page_screen.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(defaultSizes),
          child: Column(
            children: [
              SizedBox(
                height: defaultSizes * 4,
              ),
              FormHeaderWidgets(
                image: forgetPasswordImage,
                title: forgetPassWordText,
                subTitle: forgetPassWordSubTitle,
                crossAxisAlignment: CrossAxisAlignment.center,
                heightBetween: 30,
              ),
              SizedBox(height: formHeight),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text(emailText),
                      prefixIcon: Icon(Icons.mail_rounded),
                    ),
                  ),
                  SizedBox(height: formHeight),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () => Get.to(() => OtpPageScreen()),
                          child: Text("Next")))
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
