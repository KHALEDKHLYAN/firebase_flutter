import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../constants/image_string.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../../login/login.dart';

class SignupFooter extends StatelessWidget {
  const SignupFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
            onPressed: () =>Get.to(()=>Login()),
            child: Text.rich(
              TextSpan(
                text: alreadyHaveAnAccount,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(
                        fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: loginText.toUpperCase(),
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
    );
  }
}