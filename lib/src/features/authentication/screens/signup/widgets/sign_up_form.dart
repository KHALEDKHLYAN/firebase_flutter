import 'package:flutter/material.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: formHeight - 10),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                label: Text(fullName),
                prefixIcon: Icon(Icons.person_outline_outlined),
              ),
            ),
            SizedBox(height: formHeight - 20),
            TextFormField(
              decoration: InputDecoration(
                label: Text(emailText),
                prefixIcon: Icon(Icons.email_rounded),
              ),
            ),
            SizedBox(height: formHeight - 20),
            TextFormField(
              decoration: InputDecoration(
                label: Text(phoneNumber),
                prefixIcon: Icon(Icons.numbers),
              ),
            ),
            SizedBox(height: formHeight - 20),
            TextFormField(
              decoration: InputDecoration(
                label: Text(phoneNumber),
                prefixIcon: Icon(Icons.fingerprint),
              ),
            ),
            SizedBox(height: formHeight - 20),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: Text(signupText.toUpperCase())))
          ],
        ),
      ),
    );
  }
}
