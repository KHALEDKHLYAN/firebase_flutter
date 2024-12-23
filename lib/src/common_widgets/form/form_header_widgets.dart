import 'package:flutter/material.dart';

class FormHeaderWidgets extends StatelessWidget {
  const FormHeaderWidgets(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.heightBetween,
      this.imageHeight = 0.2});

  final String image, title, subTitle;
  final CrossAxisAlignment crossAxisAlignment;
  final double? heightBetween;
  final double imageHeight;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image(
          image: AssetImage(image),
          height: size.height*imageHeight,
        ),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
