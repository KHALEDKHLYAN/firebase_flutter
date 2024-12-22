import 'package:flutter/material.dart';
import '../../../../../constants/image_string.dart';

class LoginTitleWidget extends StatelessWidget {
  const LoginTitleWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(splashImage),
          height: 0.2 * size.height,
        ),
        Text(
          "Welcome Back",
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          "Make it Work, Make it Easy,Make it fast, Love it!",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}