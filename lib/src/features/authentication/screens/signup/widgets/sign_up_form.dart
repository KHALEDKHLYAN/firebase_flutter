import 'package:firebase_flutter/src/features/authentication/screens/signup/controllers/signup_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    final formKey = GlobalKey<FormState>();

    return Container(
      padding: EdgeInsets.symmetric(vertical: formHeight - 10),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: InputDecoration(
                label: Text(fullName),
                prefixIcon: Icon(Icons.person_outline_outlined),
              ),
            ),
            SizedBox(height: formHeight - 20),
            TextFormField(
              controller: controller.email,
              decoration: InputDecoration(
                label: Text(emailText),
                prefixIcon: Icon(Icons.email_rounded),
              ),
            ),
            SizedBox(height: formHeight - 20),
            TextFormField(
              controller: controller.phoneNo,
              decoration: InputDecoration(
                label: Text(phoneNumber),
                prefixIcon: Icon(Icons.call),
              ),
            ),
            SizedBox(height: formHeight - 20),
            TextFormField(
              controller: controller.password,
              decoration: InputDecoration(
                label: Text(passWordText),
                prefixIcon: Icon(Icons.fingerprint),
              ),
            ),
            SizedBox(height: formHeight - 20),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        SignupController.instance.registerUser(
                            controller.email.text.trim(),
                            controller.password.text.trim());
                      }
                    },
                    child: Text(signupText.toUpperCase())))
          ],
        ),
      ),
    );
  }
}
