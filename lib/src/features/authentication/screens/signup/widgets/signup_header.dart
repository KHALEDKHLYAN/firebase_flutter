import 'package:flutter/material.dart';

import '../../../../../constants/image_string.dart';
import '../../../../../constants/text_strings.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image(
          image: AssetImage(splashImage),
          height: 0.2 * size.height,
        ),
        Text(
          signUpTittle,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          signUpSubTittle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}