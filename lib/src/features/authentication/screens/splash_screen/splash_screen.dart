// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import '../../../../constants/color.dart';
import '../../../../constants/image_string.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top:0,
              left:0,
              child: Image(image: AssetImage(splashTopIcon),height: 65,width: 65),
            ),
            Positioned(
              top:80,
              left:defaultSizes,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(appName,style: Theme.of(context).textTheme.headlineSmall),
                  Text(appTagLine,style: Theme.of(context).textTheme.headlineMedium),
                ],
              )
            ),
            Positioned(
              bottom:150,
              child: Image(image: AssetImage(splashImage)),
            ),
            Positioned(
              bottom:40,
              right:defaultSizes,
              child: Container(
                width: splashContainerSizes,
                height:splashContainerSizes,
                color: primaryColor,
              ),
            ),
          ]
        ),
      ),
    );
  }
}