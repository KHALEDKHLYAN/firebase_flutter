// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:firebase_flutter/src/constants/sizes.dart';
import 'package:firebase_flutter/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpPageScreen extends StatelessWidget {
  const OtpPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(defaultSizes),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: defaultSizes * 4),
              Text(otpTitle,
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, fontSize: 80.0)),
              Text(
                otpSubTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: 40),
              Text(
                otpMessage + 'Support@Support.com',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              OtpTextField(
                numberOfFields: 6,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {}, child: Text("Next")))
            ],
          ),
        ),
      ),
    );
  }
}
